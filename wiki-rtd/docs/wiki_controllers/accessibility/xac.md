# Xbox Adaptive Controller (XAC)

<img src="../../../wiki_images/controllers/xbox-adaptive.png" width="250">

[Microsoft XAC Website](https://www.xbox.com/en-US/accessories/controllers/xbox-adaptive-controller)

The Xbox Adaptive Controller (XAC), released on September 4, 2018, is a video game controller designed by Microsoft for Windows PCs and the Xbox One and Xbox Series X/S consoles. It is a unified hub for devices that helps make gaming more accessible for gamers with limited mobility, allowing them to connect external devices such as switches, buttons, mounts, and joysticks to create a custom controller experience

### Steam Input Support

Yes

### Linux Kernel Support

Yes, since 3.17 - `hid-microsoft`
Kernel Driver: [xpad](https://github.com/torvalds/linux/blob/master/drivers/input/joystick/xpad.c)

### Udev rules

```
# Xbox Adaptive Controller
SUBSYSTEM=="usb", ATTRS{idVendor}=="045e", ATTRS{idProduct}=="0b0a", MODE="0660", TAG+="uaccess"
SUBSYSTEMS=="input", ATTRS{name}=="Xbox Adaptive Controller", MODE="0660", TAG+="uaccess"
```

### The xone Project

[The xone Project](https://github.com/medusalix/xone) <br>
Has firmwares, udev rules and drivers might be needed to get it to run on your distribution to get the wireless connections working.

## How to configure?

As the XAC should be interpreted we `Xbox Wireless Controller` the RetroDECK team don't see any reason why this should not work with RetroDECK right out of the box.
