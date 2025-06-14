# RetroDECK .bashrc Alias

Copy into your `~/.bashrc`

```
alias rddebug="flatpak run --command=bash net.retrodeck.retrodeck --debug"

alias rdinstc="flatpak remove net.retrodeck.retrodeck -y
flatpak install --user --bundle --noninteractive -y RetroDECK-cooker.flatpak
rm -f RetroDECK-cooker.flatpak.7z*"

alias rdinstm="flatpak remove net.retrodeck.retrodeck -y
flatpak install --user --bundle --noninteractive -y RetroDECK.flatpak"

alias rdgitclcoc="git clone -b cooker https://github.com/RetroDECK/RetroDECK"

alias rdgitclrdc="git clone -b cooker https://github.com/RetroDECK/RetroDECK"

alias rdgitclwiki="git clone https://github.com/RetroDECK/Wiki"

alias rdgitclesde="git clone -b retrodeck-main https://github.com/RetroDECK/ES-DE"
```
