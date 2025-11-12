# RetroDECK .bashrc Alias

Here we list some quick terminal shortcuts for RetroDECK development.

Copy and paste the following lines to the end of your `~/.bashrc` file on any Linux system.


```
# -----------------------------------------------------------
# RetroDECK – Core launch shortcuts
# --------------------------------------------------------

# Usage:  rdl
#   • Launches RetroDECK

alias rdl='flatpak run net.retrodeck.retrodeck'

# Usage:  rddrd
#   • Launches RetroDECK in debug mode

alias rddrd='flatpak run net.retrodeck.retrodeck --debug'

# Usage:  rddcli
#   • Launches RetroDECK in debug mode with an interactive Bash shell inside the sandbox.

alias rddcli='flatpak run --command=bash net.retrodeck.retrodeck -debug'

# --------------------------------------------------------
# RetroDECK – Install / Update helpers MAIN (auto‑download latest releases)
# -------------------------------------------------------

# Usage:  rdi-m
#   • Removes any existing RetroDECK installation
#   • Downloads the newest main‑branch flatpak
#   • Extracts, installs, and cleans up temporary files

alias rdi-m='\
echo "Fetching latest Main Flatpak…" && \
wget -q --show-progress \
"https://github.com/RetroDECK/RetroDECK/releases/latest/download/RetroDECK.flatpak" && \
echo "Installing Cooker…" && \
flatpak install --user --bundle --noninteractive -y RetroDECK.flatpak && \
echo "Cleaning temporary files…" && \
rm -f RetroDECK-cooker.flatpak && \
echo "✅ Cooker reinstalled after full cleanup."'


alias rdi-7m='\
  echo "Fetching latest Main RetroDECK bundle…" && \
  wget -q --show-progress \
    "https://github.com/RetroDECK/RetroDECK/releases/latest/download/RetroDECK.flatpak.7z.001" \
    "https://github.com/RetroDECK/RetroDECK/releases/latest/download/RetroDECK.flatpak.7z.002" && \
  echo "Removing any existing installation…" && \
  flatpak remove net.retrodeck.retrodeck -y && \
  echo "Extracting bundle…" && \
  7z x RetroDECK.flatpak.7z.001 && \
  echo "Installing…" && \
  flatpak install --user --bundle --noninteractive -y RetroDECK.flatpak && \
  echo "Cleaning up…" && \
  rm -f RetroDECK.flatpak.7z* RetroDECK.flatpak && \
  echo "✅ RetroDECK (main) installed/updated."'

# --------------------------------------------------------
# RetroDECK – Install / Update helpers COOKER (auto‑download latest releases)
# -------------------------------------------------------  
  
# Usage:  rdi-c
#   • Removes any existing RetroDECK installation
#   • Downloads the newest Cooker‑branch flatpak
#   • Extracts, installs, and cleans up temporary files

alias rdi-c='\
echo "Fetching latest Main Flatpak…" && \
wget -q --show-progress \
"https://github.com/RetroDECK/Cooker/releases/latest/download/RetroDECK-cooker.flatpak" && \
echo "Installing Cooker…" && \
flatpak install --user --bundle --noninteractive -y RetroDECK.flatpak && \
echo "Cleaning temporary files…" && \
rm -f RetroDECK-cooker.flatpak && \
echo "✅ Cooker reinstalled after full cleanup."'
  

# Usage:  rdi-c-clean
#   • Removes the flatpak package AND the ~/.var/app data folder
#   • Downloads the latest Cooker flatpak, extracts, installs, and cleans up

alias rdi-c-clean='\
echo "Performing full RetroDECK cleanup…" && \
flatpak remove net.retrodeck.retrodeck -y && \
rm -rf ~/.var/app/net.retrodeck.retrodeck/ && \
echo "Cleanup complete. Fetching latest Cooker bundle…" && \
wget -q --show-progress \
"https://github.com/RetroDECK/Cooker/releases/latest/download/RetroDECK-cooker.flatpak" && \
echo "Installing Cooker…" && \
flatpak install --user --bundle --noninteractive -y RetroDECK-cooker.flatpak && \
echo "Cleaning temporary files…" && \
rm -f RetroDECK-cooker.flatpak && \
echo "✅ Cooker reinstalled after full cleanup."'



# Usage:  rdi-7c
#   • Removes any existing RetroDECK installation
#   • Downloads the newest Cooker‑branch flatpak bundle (2‑part 7z)
#   • Extracts, installs, and cleans up temporary files

alias rdi-7c='\
  echo "Fetching latest Cooker bundle…" && \
  wget -q --show-progress \
    "https://github.com/RetroDECK/Cooker/releases/latest/download/RetroDECK-cooker.flatpak.7z.001" \
    "https://github.com/RetroDECK/Cooker/releases/latest/download/RetroDECK-cooker.flatpak.7z.002" && \
  echo "Removing any existing installation…" && \
  flatpak remove net.retrodeck.retrodeck -y && \
  echo "Extracting bundle…" && \
  7z x RetroDECK-cooker.flatpak.7z.001 && \
  echo "Installing…" && \
  flatpak install --user --bundle --noninteractive -y RetroDECK-cooker.flatpak && \
  echo "Cleaning up…" && \
  rm -f RetroDECK-cooker.flatpak.7z* RetroDECK-cooker.flatpak && \
  echo "✅ RetroDECK Cooker installed/updated."'


# Usage:  rdi-7c-clean
#   • Removes the flatpak package AND the ~/.var/app data folder
#   • Downloads the latest Cooker bundle, extracts, installs, and cleans up

alias rdi-7c-clean='\
  echo "Performing full RetroDECK cleanup…" && \
  flatpak remove net.retrodeck.retrodeck -y && \
  rm -rf ~/.var/app/net.retrodeck.retrodeck/ && \
  echo "Cleanup complete. Fetching latest Cooker bundle…" && \
  wget -q --show-progress \
    "https://github.com/RetroDECK/Cooker/releases/latest/download/RetroDECK-cooker.flatpak.7z.001" \
    "https://github.com/RetroDECK/Cooker/releases/latest/download/RetroDECK-cooker.flatpak.7z.002" && \
  echo "Extracting Cooker bundle…" && \
  7z x RetroDECK-cooker.flatpak.7z.001 && \
  echo "Installing Cooker…" && \
  flatpak install --user --bundle --noninteractive -y RetroDECK-cooker.flatpak && \
  echo "Cleaning temporary files…" && \
  rm -f RetroDECK-cooker.flatpak.7z* RetroDECK-cooker.flatpak && \
  echo "✅ Cooker reinstalled after full cleanup."'


  
# --------------------------------------------------------
# RetroDECK Local Installs + Full cleanup
# --------------------------------------------------------

# Usage:  rdi-l-c
#   • Removes the flatpak package AND the ~/.var/app data folder and installs local cooker file

  
alias rdi-l-c='\
echo "Performing full RetroDECK cleanup…" && \
flatpak remove net.retrodeck.retrodeck -y && \
rm -rf ~/.var/app/net.retrodeck.retrodeck/ && \
echo "Cleanup complete. Installing Cooker from existing bundle…" && \
flatpak install --user --bundle --noninteractive -y RetroDECK-cooker.flatpak && \
echo "Cleaning temporary files…" && \
rm -f RetroDECK-cooker.flatpak && \
echo "✅ Cooker reinstalled after full cleanup."'


# Usage:  rdi-l-m
#   • Removes the flatpak package AND the ~/.var/app data folder and installs local main file

alias rdi-l-m='\
echo "Performing full RetroDECK cleanup…" && \
flatpak remove net.retrodeck.retrodeck -y && \
rm -rf ~/.var/app/net.retrodeck.retrodeck/ && \
echo "Cleanup complete. Installing Cooker from existing bundle…" && \
flatpak install --user --bundle --noninteractive -y RetroDECK-cooker.flatpak && \
echo "Cleaning temporary files…" && \
rm -f RetroDECK-cooker.flatpak && \
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
# RetroDECK – Git‑clone shortcuts: Components
# -----------------------------------------------------------

# Usage: rdg-cook-comp
#   • Clones the `cooker` branch of the components repo

alias rdg-cook-comp='git clone -b cooker https://github.com/RetroDECK/components'

# Usage: rdg-main-comp
#   • Clones the `main` branch of the components repo

alias rdg-main-comp='git clone -b main https://github.com/RetroDECK/components'

# -----------------------------------------------------------
# RetroDECK – Git‑clone shortcuts: Cooker
# -----------------------------------------------------------

# Usage:  rdg-cook-neo
#   • Clones the `neo` branch of the main RetroDECK repo

alias rdg-cook-neo='git clone -b neo https://github.com/RetroDECK/RetroDECK'

# Usage:  rdg-cook-rd
#   • Clones the `cooker` branch of the main RetroDECK repo

alias rdg-cook-rd='git clone -b cooker https://github.com/RetroDECK/RetroDECK'

# -----------------------------------------------------------
# RetroDECK – Git‑clone shortcuts: Main
# -----------------------------------------------------------

# Usage:  rdg-main-rd
#   • Clones the `main` branch of the main RetroDECK repo

alias rdg-main-rd='git clone -b main https://github.com/RetroDECK/RetroDECK'

# -----------------------------------------------------------
# RetroDECK – Git‑clone shortcut: ES-DE
# -----------------------------------------------------------

# Usage:  rdg-esde
#   • Clones the RetroDECK‑specific ES‑DE fork

alias rdg-esde='git clone -b retrodeck-main https://github.com/RetroDECK/ES-DE'

# -----------------------------------------------------------
# RetroDECK – Git‑clone shortcut: Wiki
# -----------------------------------------------------------

# Usage:  rdg-wiki
#   • Clones the RetroDECK wiki repository

alias rdg-wiki='git clone https://github.com/RetroDECK/Wiki'

```
