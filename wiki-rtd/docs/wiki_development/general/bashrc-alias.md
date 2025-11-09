# RetroDECK .bashrc Alias

Here we list some quick terminal shortcuts for RetroDECK development.

Copy and paste the following lines to the end of your `~/.bashrc` file on any Linux system.

```
# -----------------------------------------------------------
# RetroDECK – Core launch shortcuts
# --------------------------------------------------------

# Usage:  rdl
#   • Starts RetroDECK normally

alias rdl='flatpak run net.retrodeck.retrodeck'

# Usage:  rdldcli
#   • Launches RetroDECK in debug mode with an interactive Bash shell inside the sandbox
alias rdldcli='flatpak run --command=bash net.retrodeck.retrodeck -debug'

# Usage:  rdldgui
#   • Launches RetroDECK in debug mode (GUI only)

alias rdldgui='flatpak run net.retrodeck.retrodeck --debug'


# --------------------------------------------------------
# RetroDECK – Install / Update helpers (auto‑download latest releases)
# -------------------------------------------------------

# Usage:  rdi-m
#   • Removes any existing RetroDECK installation
#   • Downloads the newest main‑branch flatpak bundle (2‑part 7z)
#   • Extracts, installs, and cleans up temporary files

alias rdi-m='\
  echo "Fetching latest RetroDECK bundle…" && \
  wget -q --show-progress \
    "https://github.com/RetroDECK/RetroDECK/releases/latest/download/RetroDECK.flatpak.7z.001" \
    "https://github.com/RetroDECK/RetroDECK/releases/latest/download/RetroDECK.flatpak.7z.02" && \
  echo "Removing any existing installation…" && \
  flatpak remove net.retrodeck.retrodeck -y && \
  echo "Extracting bundle…" && \
  7z x RetroDECK.flatpak.7z.001 && \
  echo "Installing…" && \
  flatpak install --user --bundle --noninteractive -y RetroDECK.flatpak && \
  echo "Cleaning up…" && \
  rm -f RetroDECK.flatpak.7z* RetroDECK.flatpak && \
  echo "✅ RetroDECK (main) installed/updated."'


# Usage:  rdi-c
#   • Removes any existing RetroDECK installation
#   • Downloads the newest Cooker‑branch flatpak bundle (2‑part 7z)
#   • Extracts, installs, and cleans up temporary files

alias rdi-c='\
  echo "Fetching latest Cooker bundle…" && \
  wget -q --show-progress \
    "https://github.com/RetroDECK/Cooker/releases/latest/download/RetroDECK-cooker.flatpak.7z.001" \
    "https://github.com/RetroDECK/Cooker/releases/latest/download/RetroDECK-cooker.flatpak.7z.02" && \
  echo "Removing any existing installation…" && \
  flatpak remove net.retrodeck.retrodeck -y && \
  echo "Extracting bundle…" && \
  7z x RetroDECK-cooker.flatpak.7z.001 && \
  echo "Installing…" && \
  flatpak install --user --bundle --noninteractive -y RetroDECK-cooker.flatpak && \
  echo "Cleaning up…" && \
  rm -f RetroDECK-cooker.flatpak.7z* RetroDECK-cooker.flatpak && \
  echo "✅ RetroDECK Cooker installed/updated."'


# --------------------------------------------------------
# RetroDECK Cooker – Full cleanup + Cooker reinstall
# --------------------------------------------------------
# Usage:  rdi-c-clean
#   • Removes the flatpak package AND the ~/.var/app data folder
#   • Downloads the latest Cooker bundle, extracts, installs, and cleans up

alias rdi-c-clean='\
  echo "Performing full RetroDECK cleanup…" && \
  flatpak remove net.retrodeck.retrodeck -y && \
  rm -rf ~/.var/app/net.retrodeck.retrodeck/ && \
  echo "Cleanup complete. Fetching latest Cooker bundle…" && \
  wget -q --show-progress \
    "https://github.com/RetroDECK/Cooker/releases/latest/download/RetroDECK-cooker.flatpak.7z.001" \
    "https://github.com/RetroDECK/Cooker/releases/latest/download/RetroDECK-cooker.flatpak.7z.02" && \
  echo "Extracting Cooker bundle…" && \
  7z x RetroDECK-cooker.flatpak.7z.001 && \
  echo "Installing Cooker…" && \
  flatpak install --user --bundle --noninteractive -y RetroDECK-cooker.flatpak && \
  echo "Cleaning temporary files…" && \
  rm -f RetroDECK-cooker.flatpak.7z* RetroDECK-cooker.flatpak && \
  echo "✅ Cooker reinstalled after full cleanup."'


# -------------------------------------------------------
# RetroDECK – Cleanup helpers
# -------------------------------------------------------
# Usage:  rdrmv
#   • Deletes only the per‑user data folder (~/.var/app/net.retrodeck.retrodeck/)

alias rdrmv='rm -rf ~/.var/app/net.retrodeck.retrodeck/'

# Usage:  rdrmflat
#   • Removes only the RetroDECK flatpak package

alias rdrmflat='flatpak remove net.retrodeck.retrodeck -y'

# Usage:  rdrm-all
#   • Removes both the flatpak package AND its data folder

alias rdrm-all='flatpak remove net.retrodeck.retrodeck -y && rm -rf ~/.var/app/net.retrodeck.retrodeck/'


# -----------------------------------------------------------
# RetroDECK – Git‑clone shortcuts (branch‑specific)
# -----------------------------------------------------------

# Usage: rdg-cook-comp
#   • Clones the `cooker` branch of the components repo

alias rdg-cook-comp='git clone -b cooker https://github.com/RetroDECK/components'

# Usage:  rdg-cook-neo
#   • Clones the `neo` branch of the main RetroDECK repo

alias rdg-cook-neo='git clone -b neo https://github.com/RetroDECK/RetroDECK'

# Usage:  rdg-cook-rd
#   • Clones the `cooker` branch of the main RetroDECK repo

alias rdg-cook-rd='git clone -b cooker https://github.com/RetroDECK/RetroDECK'

# Usage: rdg-rd-main
#   • Clones the `main` branch of the components repo

alias rdg-main-comp='git clone -b main https://github.com/RetroDECK/components'

# Usage:  rdg-main-rd
#   • Clones the `main` branch of the main RetroDECK repo

alias rdg-main-rd='git clone -b main https://github.com/RetroDECK/RetroDECK'

# Usage:  rdg-esde
#   • Clones the RetroDECK‑specific ES‑DE fork

alias rdg-esde='git clone -b retrodeck-main https://github.com/RetroDECK/ES-DE'

# Usage:  rdg-wiki
#   • Clones the RetroDECK wiki repository

alias rdg-wiki='git clone https://github.com/RetroDECK/Wiki'

```
