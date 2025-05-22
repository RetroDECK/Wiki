# recipe.sh

The **Component Recipe File**  `recipe.sh` purpose is to tell the RetroDECK build automation system what needs to happen to take the components base source from: **AppImage**, **Flatpak**, **Precompiled Binary** or **Built from Source** and turn it into a RetroDECK Component.

The recipe file is **NOT** included in the final component package. 

## 

```
#!/bin/bash

source "automation-tools/utils.sh"

#grab flatpak_id "https://github.com/flathub/org.solarus_games.solarus.Launcher"

grab flatpak_id "org.solarus_games.solarus.Launcher"

# custom commands goes here

finalize
```

```
#!/bin/bash

source "automation-tools/utils.sh"

grab appimage "https://github.com/PCSX2/pcsx2/releases/latest/download/pcsx2-*-linux-appimage-x64-Qt.AppImage"

# custom commands goes here

finalize

```
