# Wii Remote (Wiimote) & Nunchuck

<img src="../../../wiki_images/controllers/wii-mote.png" width="250"><img src="../../../wiki_images/controllers/wii-nunchuck.png" width="250">


The Wiimote, released on November 19, 2006, is the primary game controller for Nintendo's Wii home video game console. It features motion sensing technology, including an accelerometer and infrared sensor, allowing players to interact with games through physical gestures and pointing. The Wiimote has undergone several revisions, including the addition of Wii MotionPlus in 2009, which enhances the accuracy and precision of the motion sensing capabilities.

### Steam Input Support

No

### Linux Kernel Support

Yes, since 3.1 - `hid-wiimote`

### Emulator usecase

`Dolphin`

### Third Party Wii Remotes

Many third party Wii Remotes lack native Linux support, but several groups are working on it. 

- They may work with Bluetooth Passthrough mode in Dolphin.
- They may or may not remember pairing with the Bluetooth adapter, requiring synchronization for each game.

**Sources:**

[xwiimote github](https://github.com/xwiimote/xwiimote)

[xwiimote-ng github](https://github.com/dev-0x7C6/xwiimote-ng) - Fork of xwiimote

**Related Issues:**

[xwiimote: issue 66](https://github.com/xwiimote/xwiimote/issues/66)

[xwiimote: issue 73](https://github.com/xwiimote/xwiimote/issues/73)

[bluez: issue 94](https://github.com/bluez/bluez/issues/94)


## RetroDECK: Sync Wiimote Button Hotkey

RetroDECK has a built-in hotkey for pressing the Dolphin `Sync Wiimote` button (`Alt + W`) if you get disconnected. It can also be accessed from some controller's radial menu systems, like on the Steam Deck.

## Steam Deck Tips: Wii Remotes

- Play docked, connected to a monitor/TV, with a separate Bluetooth dongle attached to the dock.
- Set a sudo password for the Steam Deck.
- Connect a keyboard/mouse to the dock while setting up.
- Sit close to the Steam Deck when pairing the Wiimotes.
- Configure Wiimotes in `Desktop Mode` first, then switch to `Game Mode` when everything is working.

    - Open Dolphin from the Configurator.
    - Make all the settings changes to connect the Wiimotes.
    - Launch a game from `Desktop Mode` directly in Dolphin.
    - If pairing works and the Wiimotes connect and control the game fine in `Desktop Mode`, it will work in `Game Mode` when launched from RetroDECK.

## Dolphin: Hardware Prerequisites

<img src="../../../wiki_images/devices/wii-bar.png" width="150"> <img src="../../../wiki_images/devices/bluetooth-dongle.png" width="80">

- A Wii Sensor Bar alternative (wireless or wired).
- A Linux compatible Bluetooth dongle or built-in Bluetooth adapter.

## Mod: Wii bluetooth adapter to USB

For hardware mod enthusiasts, you can buy a Bluetooth adapter spare part from a Wii console and wire it as a USB Bluetooth adapter for better compatibility. 

[How to wire a Wii's Bluetooth Module to a PC USB Port](https://forums.dolphin-emu.org/Thread-how-to-wire-a-wii-s-bluetooth-module-to-a-pc-usb-port)
