# RetroDECK .bashrc Alias

Copy into your `~/.bashrc`

```
# Enter Debug Mode Cli

alias rddebugcli="flatpak run --command=bash net.retrodeck.retrodeck --debug"

# Launch RetroDECK Debug Mode

alias rddebuglaunch="flatpak run net.retrodeck.retrodeck --debug"

# Launch RetroDECK Normal

alias rdlaunch="flatpak run net.retrodeck.retrodeck"

# Extract & Install RetroDECK .flatpak files

alias rdinstallcooker="flatpak remove net.retrodeck.retrodeck -y | 7z x RetroDECK-cooker.flatpak.7z.001 | flatpak install --user --bundle --noninteractive -y RetroDECK-cooker.flatpak | rm RetroDECK-cooker.flatpak.7z*"

alias rdinstallmain="flatpak remove net.retrodeck.retrodeck -y | 7z x RetroDECK.flatpak.7z.001 | flatpak install --user --bundle --noninteractive -y RetroDECK.flatpak | rm RetroDECK.flatpak.7z*"

# Removes the net.retrodeck.retrodeck/ folder

alias rdrmvarfolder="rm -rf ~/.var/app/net.retrodeck.retrodeck/"

# Download latest cooker 7z parts

alias rddownloadcooker="wget "https://github.com/RetroDECK/Cooker/releases/latest/download/RetroDECK-cooker.flatpak.7z.001" "https://github.com/RetroDECK/Cooker/releases/latest/download/RetroDECK-cooker.flatpak.7z.002""

# Git clone commands

alias rdgitclonecooker="git clone -b cooker https://github.com/RetroDECK/RetroDECK"

alias rdgitclonemain="git clone https://github.com/RetroDECK/RetroDECK"

alias rdgitclonecomponents="git clone -b cooker https://github.com/RetroDECK/components"

alias rdgitclonecooker="git clone -b cooker https://github.com/RetroDECK/RetroDECK"

alias rdgitcloneneo="git clone -b neo https://github.com/RetroDECK/RetroDECK"

alias rdgitclonewiki="git clone https://github.com/RetroDECK/Wiki"

alias rdgitcloneesde="git clone -b retrodeck-main https://github.com/RetroDECK/ES-DE"
```
