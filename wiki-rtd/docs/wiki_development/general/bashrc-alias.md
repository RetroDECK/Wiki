# RetroDECK .bashrc Alias

Copy into your `~/.bashrc`

```
alias rddebugcli="flatpak run --command=bash net.retrodeck.retrodeck --debug"

alias rddebuglaunch="flatpak run net.retrodeck.retrodeck --debug"

alias rdinstallcooker="flatpak remove net.retrodeck.retrodeck -y
flatpak install --user --bundle --noninteractive -y RetroDECK-cooker.flatpak
rm -f RetroDECK-cooker.flatpak.7z*"

alias rdinstallmain="flatpak remove net.retrodeck.retrodeck -y
flatpak install --user --bundle --noninteractive -y RetroDECK.flatpak"

alias rdgitclonecooker="git clone -b cooker https://github.com/RetroDECK/RetroDECK"

alias rdgitclonemain="git clone https://github.com/RetroDECK/RetroDECK"

alias rdgitclonecomponents="git clone -b cooker https://github.com/RetroDECK/components"

alias rdgitclonecooker="git clone -b cooker https://github.com/RetroDECK/RetroDECK"

alias rdgitclonewiki="git clone https://github.com/RetroDECK/Wiki"

alias rdgitcloneesde="git clone -b retrodeck-main https://github.com/RetroDECK/ES-DE"
```
