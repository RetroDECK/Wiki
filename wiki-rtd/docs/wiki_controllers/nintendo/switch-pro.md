# Switch Pro

<img src="../../../wiki_images/controllers/switch-pro.png" width="250">

Official Controller for the Nintendo Switch

### Steam Input support
Yes

### Linux Kernel Support
Yes, since 5.16 - `hid-nintendo`

### Udev rules

```
# Nintendo Switch Pro Controller over USB hidraw
KERNEL=="hidraw*", ATTRS{idVendor}=="057e", ATTRS{idProduct}=="2009", MODE="0660", TAG+="uaccess"

# Nintendo Switch Pro Controller over bluetooth hidraw
KERNEL=="hidraw*", KERNELS=="*057E:2009*", MODE="0660", TAG+="uaccess"

# Grand access for some userspace tools, if connected via USB
SUBSYSTEM=="usb", ATTR{idProduct}=="2009", ATTR{idVendor}=="057e", ENV{ID_INPUT_JOYSTICK}="1", TAG+="uaccess"
```


## What is the Official RetroDECK - Steam Input Profile called?

- Switch Pro Controller: `RetroDECK: Switch Pro`

## RetroDECK Hotkeys

Read more here:

[RetroDECK: Controller Hotkeys](../../wiki_rd_controls/hotkeys-retrodeck.md)
