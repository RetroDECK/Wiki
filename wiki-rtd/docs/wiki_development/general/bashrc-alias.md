# RetroDECK: Alias & Functions for .bashrc 
 
Here we list some quick terminal shortcuts and functions for RetroDECK development.

Copy and paste the following lines to the end of your `~/.bashrc` file on any Linux system.


```
# ========================================================
#                      RetroDECK
# ========================================================


# --------------------------------------------------------
# Main Installer Function: rdi-main
# --------------------------------------------------------

# This function handles both direct flatpak installation and 7z multi-part bundle installation for the main RetroDECK.
# It checks if the flatpak is available, and if not, it falls back to the 7z method.

rdi-main() {
  # Define the URLs for the main RetroDECK flatpak and 7z parts
  FLATPAK_URL="https://github.com/RetroDECK/RetroDECK/releases/latest/download/RetroDECK.flatpak"
  PART1_URL="https://github.com/RetroDECK/RetroDECK/releases/latest/download/RetroDECK.flatpak.7z.001"
  PART2_URL="https://github.com/RetroDECK/RetroDECK/releases/latest/download/RetroDECK.flatpak.7z.002"

  echo "Checking for direct flatpak availability..."

  # Check if the flatpak file is available and download it if so
  if wget --spider -q "$FLATPAK_URL"; then
    echo "Downloading flatpak..."
    wget -q --show-progress "$FLATPAK_URL" -O RetroDECK.flatpak

    echo "Installing flatpak..."
    flatpak install RetroDECK.flatpak --user --bundle --noninteractive -y

    echo "Cleaning up..."
    rm -f RetroDECK.flatpak

    echo "Main installation complete using flatpak."
    return
  fi

  echo "Flatpak not available. Trying 7z parts..."

  # Download the 7z parts if flatpak is not available
  echo "Downloading 7z bundle..."
  wget -q --show-progress "$PART1_URL" "$PART2_URL"

  # Extract the 7z bundle
  echo "Extracting 7z bundle..."
  7z x RetroDECK.flatpak.7z.001

  # Install the extracted flatpak
  echo "Installing extracted flatpak..."
  flatpak install RetroDECK.flatpak --user --bundle --noninteractive -y

  # Clean up the 7z and flatpak files
  echo "Cleaning up..."
  rm -f RetroDECK.flatpak.7z.* RetroDECK.flatpak

  echo "Main installation complete using 7z bundle."
}

# --------------------------------------------------------
# Local Main Installer Function: rdi-l-main
# --------------------------------------------------------

# This function installs RetroDECK from a local flatpak file.
# It also performs cleanup before installation.

rdi-l-main() {
    echo "Starting full cleanup before local main installation..."

    # Install the local flatpak file
    echo "Installing local main flatpak..."
    flatpak install RetroDECK.flatpak --user --bundle --noninteractive -y

    echo "Cleaning temporary files..."
    rm -f RetroDECK.flatpak  # Clean up the flatpak file after installation

    echo "Local main installation complete."
}

# --------------------------------------------------------
# Cooker Installer Function: rdi-cooker
# --------------------------------------------------------

# This function handles both the flatpak and 7z multi-part bundle installation for RetroDECK Cooker.
# It first checks if the flatpak is available, then falls back to 7z if not.

rdi-cooker() {
  # Define URLs for the RetroDECK Cooker flatpak and 7z parts
  FLATPAK_URL="https://github.com/RetroDECK/Cooker/releases/latest/download/RetroDECK-cooker.flatpak"
  PART1_URL="https://github.com/RetroDECK/Cooker/releases/latest/download/RetroDECK-cooker.flatpak.7z.001"
  PART2_URL="https://github.com/RetroDECK/Cooker/releases/latest/download/RetroDECK-cooker.flatpak.7z.002"

  echo "Checking for direct cooker flatpak availability..."

  # Check if the cooker flatpak is available and download it if so
  if wget --spider -q "$FLATPAK_URL"; then
    echo "Downloading cooker flatpak..."
    wget -q --show-progress "$FLATPAK_URL" -O RetroDECK-cooker.flatpak

    echo "Installing cooker flatpak..."
    flatpak install RetroDECK-cooker.flatpak --user --bundle --noninteractive -y

    echo "Cleaning up..."
    rm -f RetroDECK-cooker.flatpak

    echo "Cooker installation complete using flatpak."
    return
  fi

  echo "Cooker flatpak not available. Trying 7z parts..."

  # Download the cooker 7z parts if flatpak is not available
  echo "Downloading cooker 7z bundle..."
  wget -q --show-progress "$PART1_URL" "$PART2_URL"

  # Extract the cooker 7z bundle
  echo "Extracting cooker 7z bundle..."
  7z x RetroDECK-cooker.flatpak.7z.001

  # Install the extracted cooker flatpak
  echo "Installing extracted cooker flatpak..."
  flatpak install RetroDECK-cooker.flatpak --user --bundle --noninteractive -y

  # Clean up the 7z and flatpak files
  echo "Cleaning up..."
  rm -f RetroDECK-cooker.flatpak.7z.* RetroDECK-cooker.flatpak

  echo "Cooker installation complete using 7z bundle."
}

# --------------------------------------------------------
# Local Cooker Installer Function: rdi-l-cooker
# --------------------------------------------------------

# This function installs RetroDECK Cooker from a local flatpak file.
# It also performs cleanup before installation.

rdi-l-cooker() {
    echo "Starting full cleanup before local cooker installation..."

    # Install the local cooker flatpak file
    echo "Installing local cooker flatpak..."
    flatpak install RetroDECK-cooker.flatpak --user --bundle --noninteractive -y

    echo "Cleaning temporary files..."
    rm -f RetroDECK-cooker.flatpak  # Clean up the cooker flatpak file after installation

    echo "Local cooker installation complete."
}

# --------------------------------------------------------
# RetroDECK - Launch Shortcut
# --------------------------------------------------------

# Usage: rdl-rd
# Launches RetroDECK.
alias rdl-rd='flatpak run net.retrodeck.retrodeck'

# Usage: rdl-conf
# Launches RetroDECK Configurator.
alias rdl-conf='flatpak run net.retrodeck.retrodeck --configurator'


# --------------------------------------------------------
# RetroDECK - Upgrade Simulated
# --------------------------------------------------------

# Usage: rdu-test
# Simulates an upgrade Between RetroDECK Versions argument with <version>: rdu-test 0.9.4b.
alias rdu-test='flatpak run net.retrodeck.retrodeck --test-upgrade'


# --------------------------------------------------------
# RetroDECK - Flatpak Shortcuts
# --------------------------------------------------------

# rdflat-info
# Print detailed Flatpak information about the RetroDECK package (net.retrodeck.retrodeck).
alias rdflat-info='flatpak info -e net.retrodeck.retrodeck'

# rdflat-update
# Update all system-wide and user-installed Flatpak packages.
alias rdflat-update='flatpak update && flatpak update --user'

# rdflat-repair
# Run Flatpak’s repair routine for both system-wide and user-installed Flatpaks.
alias rdflat-repair='flatpak repair && flatpak repair --user'

# rdflat-reset-user
# Reset Flatpak overrides for RetroDECK (user-level).
# NOTE: This can fix Flatpak errors caused by broken or outdated overrides, such as: "bwrap: execvp ... No such file or directory".
# Which often happen after app updates or incorrect Flatpak permissions.
alias rdflat-reset-user='flatpak override --user net.retrodeck.retrodeck --reset'

# --------------------------------------------------------
# RetroDECK - Debug Shortcuts
# --------------------------------------------------------

# rddeb-rd
# Launch RetroDECK in debug mode.
alias rddeb-rd='flatpak run net.retrodeck.retrodeck --debug'

# rddeb-conf
# Launch RetroDECK Configurator in debug mode.
alias rddeb-conf='flatpak run net.retrodeck.retrodeck --debug --configurator'

# rddeb-cli
# Launch RetroDECK in debug mode and open an interactive Bash shell inside the Flatpak sandbox.
alias rddeb-cli='flatpak run --command=bash net.retrodeck.retrodeck -debug'

# rddeb-devel
# Launch RetroDECK in debug mode with --devel and open an interactive shell inside the sandbox.
alias rddeb-devel='flatpak run --devel --command=sh net.retrodeck.retrodeck -debug'

# rddeb-strace
# Launch RetroDECK in debug mode with --devel, opening an interactive shell inside the sandbox, while tracing system calls using strace.
alias rddeb-strace='strace -o flatpak run --devel --command=sh net.retrodeck.retrodeck -debug'

# ========================================================
# RetroDECK - Cleanup Helpers
# ========================================================

# Usage: rdrm-var
# Deletes only the user data folder (~/.var/app/net.retrodeck.retrodeck).
alias rdrm-var='rm -rf ~/.var/app/net.retrodeck.retrodeck/'

# Usage: rdrm-flatpak
# Removes only the RetroDECK flatpak package.
alias rdrm-flatpak='flatpak remove net.retrodeck.retrodeck -y'

# Usage: rdrm-all
# Removes both the RetroDECK flatpak package AND its user data folder.
alias rdrm-all='flatpak remove net.retrodeck.retrodeck -y && rm -rf ~/.var/app/net.retrodeck.retrodeck/'

# --------------------------------------------------------
# RetroDECK - Git Clone Shortcuts: Components
# --------------------------------------------------------

# Usage: rdg-comp-next
# Clones the <user defined> branch of the components repo, need to be manually updated.
alias rdg-cook-next='git clone -b 0.11.0 https://github.com/RetroDECK/components'

# Usage: rdg-comp-cooker
# Clones the `cooker` branch of the components repo.
alias rdg-cook-comp='git clone -b cooker https://github.com/RetroDECK/components'

# Usage: rdg-comp-main
# Clones the `main` branch of the components repo.
alias rdg-main-comp='git clone -b main https://github.com/RetroDECK/components'

# --------------------------------------------------------
# RetroDECK - Git Clone Shortcuts: RetroDECK
# --------------------------------------------------------

# Usage: rdg-main
# Clones the `main` branch of the main RetroDECK repo.
alias rdg-main-rdmain='git clone -b main https://github.com/RetroDECK/RetroDECK'

# Usage: rdg-cooker
# Clones the `cooker` branch of the main RetroDECK repo.
alias rdg-cooker='git clone -b cooker https://github.com/RetroDECK/RetroDECK'

# Usage: rdg-next
# Clones the <user defined> branch of the main RetroDECK repo, need to be manually updated.
alias rdg-next='git clone -b 0.11.0 https://github.com/RetroDECK/RetroDECK'

# --------------------------------------------------------
# RetroDECK - Git Clone Shortcuts: ES-DE Fork
# --------------------------------------------------------

# Usage: rdg-esde
# Clones the RetroDECK-specific ES-DE fork.
alias rdg-esde='git clone -b retrodeck-main https://github.com/RetroDECK/ES-DE'

# --------------------------------------------------------
# RetroDECK - Git Clone Shortcuts: Wiki
# --------------------------------------------------------

# Usage: rdg-wiki
# Clones the RetroDECK wiki repository.
alias rdg-wiki='git clone https://github.com/RetroDECK/Wiki'


# --------------------------------------------------------
# RetroDECK - Git Clone Shortcuts: Website
# --------------------------------------------------------

# Usage: rdg-web-dev
# Clones the `dev` branch of the  RetroDECK Website repo.
alias rdg-web-dev='git clone  -b dev https://github.com/RetroDECK/RetroDECK-Website'

# Usage: rdg-web-prod
# Clones the `prod` branch of the  RetroDECK Website repo.
alias rdg-web-prod='git clone  -b prod https://github.com/RetroDECK/RetroDECK-Website'


# ========================================================
#                    END RETRODECK
# ========================================================

```
