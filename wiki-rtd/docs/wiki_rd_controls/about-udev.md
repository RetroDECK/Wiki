# About udev

<img src="../../wiki_icons/pixelitos/utilities-tweak-tool.png" width="75">

## Information 

udev is a device manager for the Linux kernel. It helps the system interact with different hardware devices using special files called udev rules.

These udev rules manage access to specific devices. Without the right udev rule, some devices, like custom controllers, might not work with RetroDECK, Steam, or other parts of the system.

Read more on:

- [Debian Wiki](https://wiki.debian.org/udev)
- [Arch Wiki](https://wiki.archlinux.org/title/udev)
- [Wikipedia](https://en.wikipedia.org/wiki/Udev)

## Folder Structure


| Folder                     |      Comment     | 
|  :---:                   |      :---:     |
| `lib/udev/rules.d/` | This directory contains the default `.rules` files provided by your system. These files should not be edited.|                                
|  `etc/udev/rules.d/` or `run/udev/rules.d`  |          This directory contains custom `.rules` files added by the administrator. These files supplement those in `lib/udev/rules.d/`     |

If a `.rules` file exists for the same device in both directories, the version in `/etc/udev/rules.d/` will take precedence over the one in `/lib/udev/rules.d/`.

## Example of a .rules file

Here is an example of a .rules file for a Merlin UTMS modem:
```
ATTRS{prod_id2}=="Merlin UMTS Modem", ATTRS{prod_id1}=="Novatel Wireless", SYMLINK+="MerlinUMTS"
```

A .rules file can also contain multiple devices. For example, here are rules for two 8Bitdo controllers:
```
# 8Bitdo F30 P1
SUBSYSTEM=="input", ATTRS{name}=="8Bitdo FC30 GamePad", ENV{ID_INPUT_JOYSTICK}="1", TAG+="uaccess"

# 8Bitdo F30 P2
SUBSYSTEM=="input", ATTRS{name}=="8Bitdo FC30 II", ENV{ID_INPUT_JOYSTICK}="1", TAG+="uaccess"
```

## Controller udev projects

**Valve's - Steam Devices**

[steam-devices github](https://github.com/ValveSoftware/steam-devices)

The Steam Devices package is usually installed when you install Steam on your system, it contains rules for the most common controllers.<br>
This package is also part of SteamOS so there is no need to install it on the Steam Deck. <br>


**Game Devices udev**

[game-devices-udev codeberg](https://codeberg.org/fabiscafe/game-devices-udev)

The Game Devices udev project is an effort to combine all game devices into one package but it is still early and several are missing. <br>


**Batocera udev**

[Batocera - Controllers github](https://github.com/batocera-linux/batocera.linux/tree/master/package/batocera/controllers)

The Batocera project has also combined a list of other controllers that might be missing from the two projects above.

## RetroDECK and Udev

Normally RetroDECK has the permissions to access all connected devices via `--devices=all`

## Quick tips on udev installation

### Administrator sudo access is needed

Installing a udev rule needs administrator root access with sudo and the rules should be put in either the `/etc/udev/rules.d/` or `/run/udev/rules.d` example from above.

- You can copy the `.rules` from terminal into the directory either from terminal or with a file browser.
- The rules should be in the `.rules` file format and should be extracted from any `.zip` `.7z` `.tar` or any other compressed format.

### Reboot or reload rules
After a rule is added you will need to either reload the `udevadm` from terminal by issuing the following command: `sudo udevadm control --reload-rules` or just reboot the system.

- The udev rule should be added when the RetroDECK or any other software that you want access to the device is not running.

### SteamOS or immutable systems
For SteamOS or other immutable systems udev rules might or might not persist over system updates (we can't say for certain).
