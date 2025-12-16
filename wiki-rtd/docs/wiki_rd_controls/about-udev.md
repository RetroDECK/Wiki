# udev

<img src="../../wiki_icons/pixelitos/utilities-tweak-tool.png" width="75">

---

## Information

**udev** is the device manager for the Linux kernel. It facilitates communication between the system and hardware devices by dynamically managing device nodes in the `/dev` directory.  

udev uses **rules** to control how devices are recognized and accessed. These rules define permissions, naming conventions, and actions triggered when devices are added or removed. Proper configuration of udev rules is essential for ensuring that hardware, such as custom controllers, functions correctly with applications like **RetroDECK**, **Steam**, and other system components.

**Additional Resources**

- [Debian Wiki: udev](https://wiki.debian.org/udev)  
- [Arch Wiki: udev](https://wiki.archlinux.org/title/udev)  
- [Wikipedia: udev](https://en.wikipedia.org/wiki/Udev)

---

## Directory structure

<img src="../../../wiki_icons/pixelitos/folder-blue-activities.png" width="35">


| Folder | Description |
| :---: | :--- |
| `lib/udev/rules.d/` | Contains the default `.rules` files installed by the system. These files are managed by packages and **should not be edited**. |
| `etc/udev/rules.d/` | Contains custom `.rules` files added by the administrator or user. These rules **override or supplement** the default rules in `lib/udev/rules.d/`. |
| `run/udev/rules.d/` | A runtime directory where udev may generate temporary rules. This is managed automatically by the system and is **not for permanent custom rules**. |

**Note:** If a `.rules` file exists for the same device in both `/etc/udev/rules.d/` and `/lib/udev/rules.d/`, the version in `/etc/udev/rules.d/` takes precedence.


---

## RetroDECK and Udev

Normally RetroDECK has the permissions to access all connected devices via `--devices=all`

---

## Example of a `.rules` File

Here is an example of a `.rules` file for a **Merlin UMTS modem**:


```
ATTRS{prod_id2}=="Merlin UMTS Modem", ATTRS{prod_id1}=="Novatel Wireless", SYMLINK+="MerlinUMTS"
```

A .rules file can also contain multiple device rules. For example, here are rules for two 8Bitdo controllers:

```
# 8Bitdo F30 P1
SUBSYSTEM=="input", ATTRS{name}=="8Bitdo FC30 GamePad", ENV{ID_INPUT_JOYSTICK}="1", TAG+="uaccess"

# 8Bitdo F30 P2
SUBSYSTEM=="input", ATTRS{name}=="8Bitdo FC30 II", ENV{ID_INPUT_JOYSTICK}="1", TAG+="uaccess"
```

**Notes on udev Rules**

- Each line represents a separate device rule.  
- `SUBSYSTEM` specifies the type of device (e.g., input devices).  
- `ATTRS{name}` or `ATTRS{prod_id}` matches the device's attributes.  
- `SYMLINK` creates a persistent symbolic link for easier device identification.  
- `ENV` and `TAG` are used to set environment variables or permissions for the device.  
- Rules are evaluated in order, and multiple rules can coexist in the same file.

---

## Controller udev Projects

| Project | Repository | Description |
| :--- | :--- | :--- |
| **Valve's Steam Devices** | [steam-devices GitHub](https://github.com/ValveSoftware/steam-devices) | Contains rules for the most common controllers. Usually installed with Steam and included in SteamOS, so no separate installation is needed on the Steam Deck. |
| **Game Devices udev** | [game-devices-udev Codeberg](https://codeberg.org/fabiscafe/game-devices-udev) | An effort to combine all game devices into a single package. Still in early development, so several devices may be missing. |
| **Batocera udev** | [Batocera Controllers GitHub](https://github.com/batocera-linux/batocera.linux/tree/master/package/batocera/controllers) | Provides additional controller rules that may not be included in the Steam Devices or Game Devices udev projects. |

---

## Quick Tips on udev Installation

### Administrator Access Required

Installing a udev rule requires **administrator (root) access** using `sudo`. Rules should be placed in either:

- `/etc/udev/rules.d/` (for permanent custom rules)  
- `/run/udev/rules.d/` (for temporary runtime rules)

**Tips:**

- You can copy `.rules` files into the directory using a terminal or a file browser.  
- Ensure the rules are in the `.rules` file format and extracted from compressed archives like `.zip`, `.7z`, or `.tar`.

---

### Reloading udev Rules or Reboot

After adding a rule, you need to either **reload udev rules** `sudo udevadm control --reload-rules` or **reboot** the system.

---

### SteamOS or Immutable Systems

On SteamOS or other immutable systems, udev rules **might not persist** across system updates. Their behavior can vary depending on the system configuration.

---