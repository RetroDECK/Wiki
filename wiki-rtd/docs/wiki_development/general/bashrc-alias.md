# RetroDECK .bashrc Alias

Copy into your `~/.bashrc`

```

# Launch RetroDECK: Standard

alias rdlaunch="flatpak run net.retrodeck.retrodeck"

# Launch RetroDECK: Debug Mode - CLI

alias rddebugcli="flatpak run --command=bash net.retrodeck.retrodeck --debug"

# Launch RetroDECK: Debug Mode - Interface

alias rddebuglaunch="flatpak run net.retrodeck.retrodeck --debug"

# Extract & Install Latest: RetroDECK Cooker

alias rdinstallrdcooker="flatpak remove net.retrodeck.retrodeck -y | 7z x RetroDECK-cooker.flatpak.7z.001 | flatpak install --user --bundle --noninteractive -y RetroDECK-cooker.flatpak | rm RetroDECK-cooker.flatpak.7z*"

# Extract & Install Latest: RetroDECK Main

alias rdinstallrdmain="flatpak remove net.retrodeck.retrodeck -y | 7z x RetroDECK.flatpak.7z.001 | flatpak install --user --bundle --noninteractive -y RetroDECK.flatpak | rm RetroDECK.flatpak.7z*"

# Removes the net.retrodeck.retrodeck/ folder

alias rdrmvarfolder="rm -rf ~/.var/app/net.retrodeck.retrodeck/"

# Remove RetroDECK Flatpak

alias rdrmrd="flatpak remove net.retrodeck.retrodeck -y"

# Remove RetroDECK Flatpak and net.retrodeck.retrodeck/ folder

alias rdrmrdall="flatpak remove net.retrodeck.retrodeck -y | rm -rf ~/.var/app/net.retrodeck.retrodeck/"

# Download latest cooker 7z parts

alias rddownloadcooker="wget "https://github.com/RetroDECK/Cooker/releases/latest/download/RetroDECK-cooker.flatpak.7z.001" "https://github.com/RetroDECK/Cooker/releases/latest/download/RetroDECK-cooker.flatpak.7z.002""

# Git Clone: Cooker Components

alias rdgitclonecomponentscooker="git clone -b cooker https://github.com/RetroDECK/components"

# Git Clone: Cooker Branch

alias rdgitclonerdneo="git clone -b neo https://github.com/RetroDECK/RetroDECK"

alias rdgitclonerdcooker="git clone -b cooker https://github.com/RetroDECK/RetroDECK"

# Git Clone: Main Components

alias rdgitclonecomponentsmain="git clone -b main https://github.com/RetroDECK/components"

# Git Clone: Main Branch

alias rdgitclonerdmain="git clone -b main https://github.com/RetroDECK/RetroDECK"

# Git Clone: RetroDECK ES-DE

alias rdgitcloneesde="git clone -b retrodeck-main https://github.com/RetroDECK/ES-DE"

# Git Clone: RetroDECK Wiki

alias rdgitclonewiki="git clone https://github.com/RetroDECK/Wiki"

```
