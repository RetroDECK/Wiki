# Xbox 360 Controller

<img src="../../../wiki_images/controllers/xbox-360.png" width="250">

### Steam Input support
Yes

### Linux Kernel Support
Yes

### Udev rules

```
# Microsoft Xbox360 Controller; USB #EXPERIMENTAL
SUBSYSTEM=="usb", ATTRS{idVendor}=="045e", ATTRS{idProduct}=="028e", MODE="0660", TAG+="uaccess"
SUBSYSTEMS=="input", ATTRS{name}=="Microsoft X-Box 360 pad", MODE="0660", TAG+="uaccess"

# Microsoft Xbox 360 Wireless Receiver for Windows; USB
SUBSYSTEM=="usb", ATTRS{idVendor}=="045e", ATTRS{idProduct}=="0719", MODE="0660", TAG+="uaccess"
SUBSYSTEMS=="input", ATTRS{name}=="Xbox 360 Wireless Receiver", MODE="0660", TAG+="uaccess"
```

### Related Projects

#### The xone Project
[The xone Project](https://github.com/medusalix/xone) <br>
Has firmwares, udev rules and drivers might be needed to get it to run on your distribution to get the wireless connections working.<br>
This should not needed for the Steam Deck, SteamOS and most gaming focus Linux distroes has it included.

## What is the Official RetroDECK - Steam Input Profile called?

- Xbox 360 Controller: `RetroDECK: Xbox 360`

### RetroDECK Hotkeys

The same hotkeys are used for Xbox controllers. Read more here:

[Xbox: RetroDECK Hotkeys](../../wiki_rd_controls/hotkeys-xbox.md)
