# Xbox 360 Controller

<img src="../../../wiki_images/controllers/xbox-360.png" width="250">

The Xbox 360 controller is a popular gamepad developed by Microsoft for the Xbox 360 console, released on November 22, 2005. It is known for its ergonomic design and compatibility with various gaming platforms. 

The controller has undergone several revisions over the years, including changes to the shape of the analog stick tops, the addition of a transformable D-pad, and various color and special edition releases.

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

## The xone Project

[The xone Project](https://github.com/medusalix/xone) 

- Provides firmwares, udev rules, and drivers for wireless connections.
- Not needed for Steam Deck, SteamOS, and most gaming-focused Linux distributions.

## What is the Official RetroDECK - Steam Input Profile called?

- Xbox 360 Controller: `RetroDECK: Xbox 360`


## RetroDECK Hotkeys

Read more here:

[RetroDECK: Controller Hotkeys](../../wiki_rd_controls/hotkeys-retrodeck.md)
