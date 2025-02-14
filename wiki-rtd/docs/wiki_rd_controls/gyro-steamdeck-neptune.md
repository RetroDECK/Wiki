# Steam Deck with SteamDeckGyroDSU

<img src="../../wiki_icons/pixelitos/steam.png" width="75">


How to get the Steam Deck working with [SteamDeckGyroDSU](https://github.com/kmicki/SteamDeckGyroDSU) to enable Gyro via the DSU protocol.

### Prerequisites: RetroDECK Steam Deck Controller Layout

Make you have `RetroDECK: Steam Deck Controller Layout` installed and enabled.

### What emulators support SteamDeckGyroDSU?

The DSU hook should be enabled by default.

- [Dolphin](https://wiki.dolphin-emu.org/index.php?title=DSU_Client#Using_DSU_devices_in_Dolphin)
- [Cemu](https://wiki.cemu.info/wiki/Motion_controls) - Cemu has a profile with Gyro Enabled for P1.
- Ryujinx

The following emulators where removed from RetroDECK but had support:

- Yuzu (Legacy)
- Citra (Legacy)

## Installing SteamDeckGyroDSU

Go to `Desktop Mode` and open the built in terminal `Konsole` from the KDE Menu (Start Menu).

Copy the following command into the terminal and hit enter:

`bash <(curl -sL https://raw.githubusercontent.com/kmicki/SteamDeckGyroDSU/master/pkg/update.sh)`

This will Install SteamDeckGyroDSU and create a new folder under `HOME` `$HOME/sdgyrodsu/` in most cases it's `home/deck/sdgyrodsu` (unless you have renamed the deck profile).

In that folder you will find two other files that is good to know about:

- `update.sh` - For updating SteamDeckGyroDSU

- `uninstall.sh` - For uninstalling SteamDeckGyroDSU
