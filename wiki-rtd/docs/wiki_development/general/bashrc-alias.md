# RetroDECK Development: Terminal Shortcuts for bashrc 

Quick terminal shortcuts, tools and functions for RetroDECK development.

Add the following lines to the end of `~/.bashrc` on any Linux system, save the file, then reload your shell:

```
source ~/.bashrc
```


```
# ========================================================
#                      RetroDECK
# ========================================================


# ========================================================
# RetroDECK - Installer: rdinstall
#
# Supports main GitHub latest, Flathub stable and choosing 
# from the latest 10 Cooker or Main GitHub releases.
# ========================================================


_rdi_get_assets() {
    local repo="$1"
    local tag="$2"
    local api_url
    if [ "$tag" = "latest" ]; then
        api_url="https://api.github.com/repos/RetroDECK/${repo}/releases/latest"
    else
        api_url="https://api.github.com/repos/RetroDECK/${repo}/releases/tags/${tag}"
    fi
    curl -sL "$api_url" | python3 -c 'import sys,json; [print(a["browser_download_url"]) for a in json.load(sys.stdin).get("assets",[])]' 2>/dev/null
}

_rdi_fetch_tags() {
    local repo="$1"
    if ! command -v python3 >/dev/null 2>&1; then
        return 1
    fi
    local api_url="https://api.github.com/repos/RetroDECK/${repo}/releases?per_page=10"
    curl -sL "$api_url" | python3 -c 'import sys,json; [print(r["tag_name"]) for r in json.load(sys.stdin)[:10]]' 2>/dev/null
}

_rdi_github_install() {
    local repo="$1"
    local tag="$2"
    local tmpdir
    tmpdir=$(mktemp -d)
    cd "$tmpdir" || return 1

    echo "Fetching release assets from GitHub..."
    local assets
    assets=$(_rdi_get_assets "$repo" "$tag")

    if [ -z "$assets" ]; then
        echo "Error: could not fetch assets. Tag may not exist or API rate limit hit."
        cd - >/dev/null
        rm -rf "$tmpdir"
        return 1
    fi

    local flatpak_url
    flatpak_url=$(echo "$assets" | grep '\.flatpak$' | grep -v '\.7z' | head -n1)

    if [ -n "$flatpak_url" ]; then
        echo "Downloading flatpak..."
        if ! wget -q --show-progress "$flatpak_url" -O "retrodeck.flatpak"; then
            echo "Error: download failed."
            cd - >/dev/null
            rm -rf "$tmpdir"
            return 1
        fi
        echo "Installing flatpak..."
        flatpak install "retrodeck.flatpak" --user --bundle --noninteractive -y
        echo "Cleaning up..."
        cd - >/dev/null
        rm -rf "$tmpdir"
        echo "Installation complete."
        return 0
    fi

    local part1_url part2_url
    part1_url=$(echo "$assets" | grep '\.7z\.001$' | head -n1)
    part2_url=$(echo "$assets" | grep '\.7z\.002$' | head -n1)

    if [ -n "$part1_url" ] && [ -n "$part2_url" ]; then
        echo "Downloading 7z bundle..."
        if ! wget -q --show-progress "$part1_url" -O "bundle.7z.001"; then
            echo "Error: failed to download part 1."
            cd - >/dev/null
            rm -rf "$tmpdir"
            return 1
        fi
        if ! wget -q --show-progress "$part2_url" -O "bundle.7z.002"; then
            echo "Error: failed to download part 2."
            cd - >/dev/null
            rm -rf "$tmpdir"
            return 1
        fi
        echo "Extracting 7z bundle..."
        if ! 7z x "bundle.7z.001"; then
            echo "Error: extraction failed."
            cd - >/dev/null
            rm -rf "$tmpdir"
            return 1
        fi
        local extracted
        extracted=$(ls -1 *.flatpak 2>/dev/null | head -n1)
        if [ -z "$extracted" ]; then
            echo "Error: no flatpak found inside archive."
            cd - >/dev/null
            rm -rf "$tmpdir"
            return 1
        fi
        echo "Installing extracted flatpak..."
        flatpak install "$extracted" --user --bundle --noninteractive -y
        echo "Cleaning up..."
        cd - >/dev/null
        rm -rf "$tmpdir"
        echo "Installation complete."
        return 0
    fi

    echo "Error: no flatpak or 7z bundle assets found for this release."
    cd - >/dev/null
    rm -rf "$tmpdir"
    return 1
}

rdinstall() {
    if flatpak info net.retrodeck.retrodeck >/dev/null 2>&1; then
        echo ""
        echo "RetroDECK is already installed."
        read -rp "Run rdremove now? [y/n]: " remove_choice
        echo ""
        case "$remove_choice" in
            y|Y|yes|YES)
                rdremove
                return
                ;;
        esac
    fi

    echo ""
    echo "RetroDECK Installer"
    echo "-------------------"
    echo "1) Main latest release"
    echo "2) Flathub stable"
    echo "3) Cooker release (latest 10)"
    echo "4) Main release (latest 10)"
    echo "q) Quit"
    echo ""
    read -rp "Choice [1-4/q]: " choice
    echo ""
    local -a tags_array=()
    local tag
    local i
    case "$choice" in
        1)
            _rdi_github_install "RetroDECK" "latest"
            ;;
        2)
            echo "Installing from Flathub..."
            flatpak install flathub net.retrodeck.retrodeck --user -y
            echo "Done."
            ;;
        3)
            echo "Fetching latest 10 Cooker releases..."
            echo ""
            i=1
            while IFS= read -r tag; do
                [ -z "$tag" ] && continue
                echo "$i) $tag"
                tags_array[i]="$tag"
                ((i++))
            done < <(_rdi_fetch_tags "Cooker")
            if [ ${#tags_array[@]} -eq 0 ]; then
                echo "Error: could not fetch tags. Check network or API rate limit."
                return
            fi
            echo ""
            read -rp "Pick a release [1-${#tags_array[@]}]: " tag_choice
            echo ""
            if [[ "$tag_choice" =~ ^[0-9]+$ ]] && [ "$tag_choice" -ge 1 ] && [ "$tag_choice" -le ${#tags_array[@]} ]; then
                _rdi_github_install "Cooker" "${tags_array[$tag_choice]}"
            else
                echo "Invalid choice."
            fi
            ;;
        4)
            echo "Fetching latest 10 Main releases..."
            echo ""
            i=1
            while IFS= read -r tag; do
                [ -z "$tag" ] && continue
                echo "$i) $tag"
                tags_array[i]="$tag"
                ((i++))
            done < <(_rdi_fetch_tags "RetroDECK")
            if [ ${#tags_array[@]} -eq 0 ]; then
                echo "Error: could not fetch tags. Check network or API rate limit."
                return
            fi
            echo ""
            read -rp "Pick a release [1-${#tags_array[@]}]: " tag_choice
            echo ""
            if [[ "$tag_choice" =~ ^[0-9]+$ ]] && [ "$tag_choice" -ge 1 ] && [ "$tag_choice" -le ${#tags_array[@]} ]; then
                _rdi_github_install "RetroDECK" "${tags_array[$tag_choice]}"
            else
                echo "Invalid choice."
            fi
            ;;
        q|Q)
            echo "Cancelled."
            ;;
        *)
            echo "Invalid choice."
            ;;
    esac
    echo ""
}

# ========================================================
# RetroDECK - Flatpak Management Tool: rdflatpak
#
# Provides a menu to view RetroDECK package info. 
# Update/repair RetroDECK or all Flatpaks or 
# reset user-level overrides for RetroDECK.
# ========================================================

rdflatpak() {
    echo ""
    echo "RetroDECK Flatpak Tools"
    echo "-----------------------"
    echo "1) Show RetroDECK package info"
    echo "2) Update RetroDECK only"
    echo "3) Repair RetroDECK only"
    echo "4) Reset RetroDECK user overrides (fixes bwrap/execvp errors)"
    echo "5) Update ALL Flatpaks (system + user)"
    echo "6) Repair ALL Flatpaks (system + user)"
    echo "q) Quit"
    echo ""
    read -rp "Choice [1-6/q]: " choice
    echo ""
    case "$choice" in
        1)
            echo "Fetching package info..."
            flatpak info -e net.retrodeck.retrodeck
            echo "Done."
            ;;
        2)
            echo "Updating RetroDECK..."
            flatpak update net.retrodeck.retrodeck -y
            echo "Done."
            ;;
        3)
            echo "Repairing RetroDECK..."
            flatpak repair net.retrodeck.retrodeck
            flatpak repair --user net.retrodeck.retrodeck
            echo "Done."
            ;;
        4)
            echo "Resetting RetroDECK user overrides..."
            flatpak override --user net.retrodeck.retrodeck --reset
            echo "Done."
            ;;
        5)
            echo "Updating system Flatpaks..."
            flatpak update
            echo "Updating user Flatpaks..."
            flatpak update --user
            echo "Done."
            ;;
        6)
            echo "Repairing system Flatpaks..."
            flatpak repair
            echo "Repairing user Flatpaks..."
            flatpak repair --user
            echo "Done."
            ;;
        q|Q)
            echo "Cancelled."
            ;;
        *)
            echo "Invalid choice."
            ;;
    esac
    echo ""
}

# ========================================================
# RetroDECK Remove Tool: rdremove
#
# Provides a menu to remove user data, the Flatpak package, reset permissions,
# or remove everything (package + data + permissions).
# ========================================================


rdremove() {
    echo ""
    echo "  RetroDECK Cleanup"
    echo "  ================="
    echo "  1) Remove User Data Directory (~/.var/app/net.retrodeck.retrodeck/)"
    echo "  2) Remove Flatpak Installation"
    echo "  3) Reset Flatpak Permissions Default"
    echo "  4) Remove and reset EVERYTHING"
    echo "  q) Quit"
    echo ""
    read -rp "  Choice [1-4/q]: " choice
    echo ""
    case "$choice" in
        1) echo " Removing user data..."; rm -rf ~/.var/app/net.retrodeck.retrodeck/; echo "Done" ;;
        2) echo " Removing Flatpak..."; flatpak remove net.retrodeck.retrodeck -y; echo "Done" ;;
        3) echo " Resetting permissions..."; flatpak permission-reset net.retrodeck.retrodeck; echo "Done" ;;
        4) echo " Removing Flatpak..."; flatpak remove net.retrodeck.retrodeck -y; echo " Removing user data..."; rm -rf ~/.var/app/net.retrodeck.retrodeck/; echo " Resetting permissions..."; flatpak permission-reset net.retrodeck.retrodeck; echo "Done" ;;
        q|Q) echo "Cancelled." ;;
        *) echo "Invalid choice." ;;
    esac
    echo ""
}



# ========================================================
# RetroDECK - Git Clone Shortcuts Tool: rdgit
#
# Interactive RetroDECK git clone tool.
# Clones RetroDECK, components, ES-DE fork, wiki, or website repos.
# ========================================================

_rdgit_fetch_branches() {
    local repo="$1"
    if ! command -v python3 >/dev/null 2>&1; then
        return 1
    fi
    curl -sL "https://api.github.com/repos/RetroDECK/${repo}/branches?per_page=30" | python3 -c 'import sys,json; [print(b["name"]) for b in json.load(sys.stdin)]' 2>/dev/null
}

rdgit() {
    echo ""
    echo "RetroDECK Git Clone Tool"
    echo "------------------------"
    echo "1) RetroDECK main"
    echo "2) RetroDECK (choose branch)"
    echo "3) Components main"
    echo "4) Components (choose branch)"
    echo "5) ES-DE fork"
    echo "6) Wiki"
    echo "7) Website main"
    echo "8) Website dev"
    echo "q) Quit"
    echo ""
    read -rp "Choice [1-8/q]: " choice
    echo ""
    local -a branches=()
    local branch
    local i
    case "$choice" in
        1)
            echo "Cloning RetroDECK main..."
            git clone -b main https://github.com/RetroDECK/RetroDECK
            echo "Done."
            ;;
        2)
            echo "Fetching branches..."
            i=1
            while IFS= read -r branch; do
                [ -z "$branch" ] && continue
                echo "$i) $branch"
                branches[i]="$branch"
                ((i++))
            done < <(_rdgit_fetch_branches "RetroDECK")
            if [ ${#branches[@]} -eq 0 ]; then
                echo "Error: could not fetch branches."
                return
            fi
            echo ""
            read -rp "Pick a branch [1-${#branches[@]}]: " branch_choice
            echo ""
            if [[ "$branch_choice" =~ ^[0-9]+$ ]] && [ "$branch_choice" -ge 1 ] && [ "$branch_choice" -le ${#branches[@]} ]; then
                echo "Cloning RetroDECK ${branches[$branch_choice]}..."
                git clone -b "${branches[$branch_choice]}" https://github.com/RetroDECK/RetroDECK
                echo "Done."
            else
                echo "Invalid choice."
            fi
            ;;
        3)
            echo "Cloning Components main..."
            git clone -b main https://github.com/RetroDECK/components
            echo "Done."
            ;;
        4)
            echo "Fetching branches..."
            i=1
            while IFS= read -r branch; do
                [ -z "$branch" ] && continue
                echo "$i) $branch"
                branches[i]="$branch"
                ((i++))
            done < <(_rdgit_fetch_branches "components")
            if [ ${#branches[@]} -eq 0 ]; then
                echo "Error: could not fetch branches."
                return
            fi
            echo ""
            read -rp "Pick a branch [1-${#branches[@]}]: " branch_choice
            echo ""
            if [[ "$branch_choice" =~ ^[0-9]+$ ]] && [ "$branch_choice" -ge 1 ] && [ "$branch_choice" -le ${#branches[@]} ]; then
                echo "Cloning Components ${branches[$branch_choice]}..."
                git clone -b "${branches[$branch_choice]}" https://github.com/RetroDECK/components
                echo "Done."
            else
                echo "Invalid choice."
            fi
            ;;
        5)
            echo "Cloning ES-DE fork..."
            git clone -b retrodeck-main https://github.com/RetroDECK/ES-DE
            echo "Done."
            ;;
        6)
            echo "Cloning Wiki..."
            git clone https://github.com/RetroDECK/Wiki
            echo "Done."
            ;;
        7)
            echo "Cloning Website main..."
            git clone -b main https://github.com/RetroDECK/RetroDECK-Website
            echo "Done."
            ;;
        8)
            echo "Cloning Website dev..."
            git clone -b dev https://github.com/RetroDECK/RetroDECK-Website
            echo "Done."
            ;;
        q|Q)
            echo "Cancelled."
            ;;
        *)
            echo "Invalid choice."
            ;;
    esac
    echo ""
}


# --------------------------------------------------------
# RetroDECK - Launch Shortcuts
# --------------------------------------------------------

# Usage: rdlaunch-retrodeck
# Launches RetroDECK.
alias rdlaunch-retrodeck='flatpak run net.retrodeck.retrodeck'

# Usage: rdlaunch-configurator
# Launches RetroDECK Configurator.
alias rdlaunch-configurator='flatpak run net.retrodeck.retrodeck --configurator'


# --------------------------------------------------------
# RetroDECK - Upgrade Simulated
# --------------------------------------------------------

# Usage: rdtest-upgrade
# Simulates an upgrade Between RetroDECK Versions argument with <version>: rdtest-upgrade 0.9.4b.
alias rdtest-upgrade='flatpak run net.retrodeck.retrodeck --test-upgrade'

# --------------------------------------------------------
# RetroDECK - Debug Shortcuts
# --------------------------------------------------------

# rddebug-rd
# Launch RetroDECK in debug mode.
alias rddebug-rd='flatpak run net.retrodeck.retrodeck --debug'

# rddebug-conf
# Launch RetroDECK Configurator in debug mode.
alias rddebug-conf='flatpak run net.retrodeck.retrodeck --debug --configurator'

# rddebug-cli
# Launch RetroDECK in debug mode and open an interactive Bash shell inside the Flatpak sandbox.
alias rddebug-cli='flatpak run --command=bash net.retrodeck.retrodeck -debug'

# rddebug-devel
# Launch RetroDECK in debug mode with --devel and open an interactive shell inside the sandbox.
alias rddebug-devel='flatpak run --devel --command=sh net.retrodeck.retrodeck -debug'

# rddebug-strace
# Launch RetroDECK in debug mode with --devel, opening an interactive shell inside the sandbox, while tracing system calls using strace.
alias rddebug-strace='strace -o flatpak run --devel --command=sh net.retrodeck.retrodeck -debug'


# ========================================================
#                    END RETRODECK
# ========================================================

```
