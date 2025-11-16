# RetroDECK .bashrc Alias

Here we list some quick terminal shortcuts for RetroDECK development.

Copy and paste the following lines to the end of your `~/.bashrc` file on any Linux system.


```
# ========================================================
#                      RetroDECK
# ========================================================

# --------------------------------------------------------
# Function: Cleanup RetroDECK
# --------------------------------------------------------

# This function removes both the RetroDECK flatpak package and the associated user data directory (~/.var/app/net.retrodeck.retrodeck/).
# It prompts the user for confirmation before proceeding with the removal to avoid accidental data loss.

rdrm-cleanup() {
  # Check if RetroDECK flatpak is installed
  if flatpak info net.retrodeck.retrodeck &>/dev/null; then
    echo "RetroDECK is currently installed."

    # Ask the user if they want to remove the flatpak package
    read -p "Do you want to remove the RetroDECK flatpak? (y/n): " remove_fp
    if [[ "$remove_fp" == "y" || "$remove_fp" == "Y" ]]; then
      echo "Removing RetroDECK flatpak..."
      flatpak remove net.retrodeck.retrodeck -y
    else
      echo "Skipping flatpak removal."
    fi
  else
    echo "RetroDECK flatpak is not installed. Skipping removal."
  fi

  # Check if the user data directory exists
  local path="$HOME/.var/app/net.retrodeck.retrodeck"
  if [[ -d "$path" ]]; then
    # Ask the user if they want to remove the user data directory
    read -p "Do you want to remove the RetroDECK user data directory (~/.var/app/net.retrodeck.retrodeck)? (y/n): " remove_data
    if [[ "$remove_data" == "y" || "$remove_data" == "Y" ]]; then
      echo "Removing data directory..."
      rm -rf "$path"
    else
      echo "Skipping data directory removal."
    fi
  else
    echo "RetroDECK user data directory not found. Skipping."
  fi
}

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

  rdrm-cleanup  # Cleanup before installation

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
    rdrm-cleanup  # Perform cleanup before installation

    # Install the local flatpak file
    echo "Installing local main flatpak..."
    flatpak install RetroDECK.flatpak --user --bundle --noninteractive -y

    echo "Cleaning temporary files..."
    rm -f RetroDECK.flatpak  # Clean up the flatpak file after installation

    echo "Local main installation complete."
}

# --------------------------------------------------------
# Cooker Installer Function: rdi-cook
# --------------------------------------------------------

# This function handles both the flatpak and 7z multi-part bundle installation for RetroDECK Cooker.
# It first checks if the flatpak is available, then falls back to 7z if not.

rdi-cook() {
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

  rdrm-cleanup  # Cleanup before installation

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
    rdrm-cleanup  # Perform cleanup before installation

    # Install the local cooker flatpak file
    echo "Installing local cooker flatpak..."
    flatpak install RetroDECK-cooker.flatpak --user --bundle --noninteractive -y

    echo "Cleaning temporary files..."
    rm -f RetroDECK-cooker.flatpak  # Clean up the cooker flatpak file after installation

    echo "Local cooker installation complete."
}

# --------------------------------------------------------
# RetroDECK – Core Launch Shortcuts
# --------------------------------------------------------

# Usage: rdl
# Launches RetroDECK
alias rdl='flatpak run net.retrodeck.retrodeck'

# Usage: rddeb-rd
# Launches RetroDECK in debug mode
alias rddeb-rd='flatpak run net.retrodeck.retrodeck --debug'

# Usage: rddeb-cli
# Launches RetroDECK in debug mode with an interactive Bash shell inside the sandbox
alias rddeb-cli='flatpak run --command=bash net.retrodeck.retrodeck -debug'

# Usage: rddeb-devel
# Launches RetroDECK in debug mode with an interactive Bash shell inside the sandbox with --devel and putting out a log.
alias rddeb-devel='log -f flatpak run --devel --command=sh net.retrodeck.retrodeck -debug'

# Usage: rddeb-strace
# Launches RetroDECK in debug mode with an interactive Bash shell inside the sandbox, while running strace, --devel and putting out a log.
alias rddeb-strace='strace -o log -f flatpak run --devel --command=sh net.retrodeck.retrodeck -debug'


# ========================================================
# RetroDECK – Cleanup Helpers
# ========================================================

# Usage: rdrm-var
# Deletes only the user data folder (~/.var/app/net.retrodeck.retrodeck)
alias rdrm-var='rm -rf ~/.var/app/net.retrodeck.retrodeck/'

# Usage: rdrm-flat
# Removes only the RetroDECK flatpak package
alias rdrm-flat='flatpak remove net.retrodeck.retrodeck -y'

# Usage: rdrm-all
# Removes both the RetroDECK flatpak package AND its user data folder
alias rdrm-all='flatpak remove net.retrodeck.retrodeck -y && rm -rf ~/.var/app/net.retrodeck.retrodeck/'

# --------------------------------------------------------
# RetroDECK – Git Clone Shortcuts: Components
# --------------------------------------------------------

# Usage: rdg-cook-comp
# Clones the `cooker` branch of the components repo
alias rdg-cook-comp='git clone -b cooker https://github.com/RetroDECK/components'

# Usage: rdg-main-comp
# Clones the `main` branch of the components repo
alias rdg-main-comp='git clone -b main https://github.com/RetroDECK/components'

# --------------------------------------------------------
# RetroDECK – Git Clone Shortcuts: Cooker Branches
# --------------------------------------------------------

# Usage: rdg-cook-neo
# Clones the `neo` branch of the main RetroDECK repo
alias rdg-cook-neo='git clone -b neo https://github.com/RetroDECK/RetroDECK'

# Usage: rdg-cook-rd
# Clones the `cooker` branch of the main RetroDECK repo
alias rdg-cook-rd='git clone -b cooker https://github.com/RetroDECK/RetroDECK'

# --------------------------------------------------------
# RetroDECK – Git Clone Shortcuts: Main Branch
# --------------------------------------------------------

# Usage: rdg-main-rd
# Clones the `main` branch of the main RetroDECK repo
alias rdg-main-rd='git clone -b main https://github.com/RetroDECK/RetroDECK'

# --------------------------------------------------------
# RetroDECK – Git Clone Shortcuts: ES-DE Fork
# --------------------------------------------------------

# Usage: rdg-esde
# Clones the RetroDECK-specific ES-DE fork
alias rdg-esde='git clone -b retrodeck-main https://github.com/RetroDECK/ES-DE'

# --------------------------------------------------------
# RetroDECK – Git Clone Shortcuts: Wiki
# --------------------------------------------------------

# Usage: rdg-wiki
# Clones the RetroDECK wiki repository
alias rdg-wiki='git clone https://github.com/RetroDECK/Wiki'

# ========================================================
#                   END RETRODECK
# ========================================================

```
