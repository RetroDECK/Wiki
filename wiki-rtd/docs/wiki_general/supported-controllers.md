# RetroDECK - Steam Input Templates

RetroDECK handles most of the advanced controller mapping via Steam Input.
More controllers will be added in the future when Steam Input adds support for them.

### All controls in RetroDECK can be changed

Everyone is free to rebind the buttons as you see fit in the any of the RetroDECK's Steam Input profiles, inside the emulators or both.
You can make your own profile to better suite your needs and combine it with input changes you make in each emulator.

But always remember if you rebind the keys inside RetroDECK in both Steam Input and the Emulators there will always be a risk that an upcoming update of either Steam or RetroDECK (thus including new versions of the built in Emulators) can come with changes that breaks your profiles.

Also note that if you break your controller template with your tinkering you can always revert to the Official Controller Profiles or reinstall them from the Configurator.

## Prerequisite for Steam Input work

There exists some prerequisites for making Steam Input to work with RetroDECK.

### RetroDECK must be added to Steam

In Steam go to the tab `Games` press `Add non Steam game to My library` and select RetroDECK to add it into your library or add it manually or via a software like `BoilR`.

### Linux Desktop - Extras:

**Note:**

On SteamOS or SteamOS based devices like the Steam Deck this is not needed.


#### Make sure you have installed the steam-devices package

Normally `steam-devices` is a part of the Steam installation for many distrubtions, but it could be diffrent depending on what you are running.

Steam usually complains with warnings if `steam-devices` is missing.

If `steam-devices` is not installed, please check your distrubtion on how to do so.


#### You must have enable all Steam Input in Steam


1. In Steam press the `Steam` top menu
2. Go to `Settings`.
3. Press `🎮 Controller`.
4. Press and enable all Steam Inputs for: `Xbox` `PlayStation` `Switch Pro` `Generic`
5. Close the `Settings`

## About Templates:

### Steam Deck Templates

Devices like the Steam Deck with a built-in controller you will be able to find the profile under `🎮 Controller Settings` -> `Controller Layouts` -> `Templates`.

### External Controller Templates

You will need to connect the external controllers to find the templates for the controller templates to show up automatically.

Connect via: `Cable` / `Bluetooth` / `Wireless`.

You will find the profile under `🎮 Controller Settings` -> `Controller Layouts` -> `Templates`.

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
