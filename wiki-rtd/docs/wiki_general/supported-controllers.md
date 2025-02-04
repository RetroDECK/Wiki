# RetroDECK - Steam Input Templates

RetroDECK handles advanced controller mapping via Steam Input. More controllers will be added as Steam Input supports them.

### Customizing Controls

You can rebind buttons in RetroDECK's Steam Input Templates and emulators.

Create your own profile to suit your needs, but be aware that updates to Steam or RetroDECK might break your profiles. 

If this happens, you can revert to the Official Controller Profiles or reinstall them from the RetroDECK Configurator.

## Prerequisites for Steam Input

### RetroDECK must be added to Steam for Steam Input

In Steam, go to the `Games` tab, press `Add non Steam game to My library`, and select RetroDECK. You can also add it manually or via software like `BoilR`.

### Linux Desktop - steam-devices:

The `steam-devices` package is usually part of the Steam installation for many distributions, but it may vary. This package is required for Steam to recognize controllers. 

Steam will warn you if `steam-devices` is missing. 

Check your distribution's instructions to install it if needed.

**Note:**

This is not needed for SteamOS-based devices like the Steam Deck or most gaming distributions like Bazzite, Chimera, Nobara and more.


### Enable All Steam Input in Steam

1. In Steam press the `Steam` top menu
2. Go to `Settings`.
3. Press `🎮 Controller`.
4. Enable all Steam Inputs for `Xbox` `PlayStation` `Switch Pro` `Generic`
5. Close the `Settings`

### Where to find the templates?

`Select RetroDECK in Steam` -> `🎮 Controller Settings` -> `Controller Layouts` -> `Templates` 

**Note: Linux Desktop and External Controllers:**

On Linux Desktop you will need to connect an external controller via cable, Bluetooth, or wireless for the `🎮 Controller Settings` icon to show up. 

## Template Lists

What follows are lists with links of the currently supported Steam Input profiles.

### Generic Controllers

Generic Controllers encompasses the vast majority of 3rd party controllers.

| Controller         | Layout Name |  Version      |   Original System   |   Controller Link |  Hotkeys Link   |  Comment  |
| :---               | :---:   | :---:   |     :---:    |  :---:     |   :---:     |    :---:     |
| Generic Standard |   `RetroDECK: Generic - Standard`      |   `v.1b`          |  Varies  | [Generic Standard](../wiki_controllers/generic/standard/generic-standard.md)   |[Generic Standard: RetroDECK Hotkeys](../wiki_rd_controls/hotkeys-generic-standard.md)| Majority of 3rd Party Controllers with a Standard Layout |


### Nintendo Controllers

Controllers made by Nintendo for the Nintendo systems.

| Controller         | Layout Name |  Version      |   Original System   |   Controller Link |  Hotkeys Link   |  Comment  |
| :---                     | :---:               | :---:                 |       :---:          |  :---:     |   :---:     |    :---:     |
| Switch Pro      |   `RetroDECK: Switch Pro`      |   `v.1b`          |  Nintendo Switch  |       [Switch Pro](../wiki_controllers/nintendo/switch-pro.md)   |  [Nintendo: Hotkeys](../wiki_rd_controls/hotkeys-nintendo.md)  |  |

### Valve/Steam Controllers

Controllers / Consoles made by Valve.

| Controller         | Layout Name |  Version      |   Original System   |   Controller Link |  Hotkeys Link   |  Comment  |
| :---                     | :---:               | :---:                 |       :---:          |  :---:     |   :---:     |    :---:     |
| Steam Deck: Neptune      |   `RetroDECK: RetroDECK: Steam Deck - Neptune`|   `v.1.1b`          |  Steam Deck LCD/OLED  |       [Steam Deck - Neptune](../wiki_controllers/steam/steamdeck-neptune.md)    |  [Steam Deck: Hotkeys](../wiki_rd_controls/hotkeys-steamdeck-neptune.md)  | Has two radial menu systems |
| Steam Controller: Gordon    |   `RetroDECK: Steam Controller - Gordon`      |   `v.1b`          |  Steam Devices  |       [Steam Controller - Gordon](../wiki_controllers/steam/steam-controller-gordon.md)    |  [Steam Controller: Hotkeys](../wiki_controllers/steam/steam-controller-gordon.md)  |  |

### Playstation Controllers

Controllers made by Sony for the PlayStation systems.

| Controller         | Layout Name |  Version      |   Original System   |   Controller Link |  Hotkeys Link   |  Comment  |
| :---                     | :---:               | :---:                 |       :---:          |  :---:     |   :---:     |    :---:     |
| DualShock 3      |   `RetroDECK: DualShock 3`      |   `v.1b`          |  PlayStation 3  |       [DualShock 3](../wiki_controllers/playstation/dualshock-3.md)   |  [Playstation: Hotkeys](../wiki_rd_controls/hotkeys-playstation.md) |  |
| DualShock 4      |   `RetroDECK: DualShock 4`      |   `v.1b`          |  PlayStation 4  |       [DualShock 4](../wiki_controllers/playstation/dualshock-4.md)   |  [Playstation: Hotkeys](../wiki_rd_controls/hotkeys-playstation.md) |  |
| DualSense        |   `RetroDECK: DualSense`        |   `v.1b`          |  PlayStation 5  |       [DualSense](../wiki_controllers/playstation/dualsense.md)   |  [Playstation: Hotkeys](../wiki_rd_controls/hotkeys-playstation.md) |  |
| DualSense Edge   |   `RetroDECK: Dualshock 3`      |   `v.1b`          |  PlayStation 5  |       [DualSense Edge](../wiki_controllers/playstation/dualsense-edge.md)   |  [Playstation: Hotkeys](../wiki_rd_controls/hotkeys-playstation.md) |  |


### Xbox Controllers

Controllers made by Microsoft for the Xbox systems.

| Controller         | Layout Name |  Version      |   Original System   |   Controller Link |  Hotkeys Link   |  Comment  |
| :---                     | :---:               | :---:                 |       :---:          |  :---:     |   :---:     |    :---:     |
| Xbox 360      |   `RetroDECK: Xbox 360`      |   `v.1b`          |  Xbox 360  |       [Xbox 360 Controller](../wiki_controllers/xbox/xbox-360.md)   |  [Xbox: Hotkeys](../wiki_rd_controls/hotkeys-xbox.md)|  |
| Xbox Wireless |   `RetroDECK: Xbox Wireless` |   `v.1b`          |  Xbox One / S / X  |       [Xbox Wireless Controller](../wiki_controllers/xbox/xbox-wireless.md)   |  [Xbox: Hotkeys](../wiki_rd_controls/hotkeys-xbox.md)|  |
| Xbox Elite Wireless Series 1 / 2|   `RetroDECK: Xbox Wireless` |   `v.1b`          |  Xbox S / X  |       [Xbox Elite Wireless Controller Series 1 / 2](../wiki_controllers/xbox/xbox-wireless-elite.md)   |  [Xbox: Hotkeys](../wiki_rd_controls/hotkeys-xbox.md)| Works as a normal Xbox Wireless in Steam Input|
