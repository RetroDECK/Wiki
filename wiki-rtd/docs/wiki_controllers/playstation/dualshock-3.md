# PlayStation 3 - DualShock 3 / Sixaxis

<img src="../../../wiki_images/controllers/ps3-dualshock3.png" width="250">

### Steam Input support
Yes

### Linux Kernel Support
Yes, 2.17  `hid-sony`

### Udev rules

```
# Sony PlayStation DualShock 3; Bluetooth; USB
KERNEL=="hidraw*", KERNELS=="*054C:0268*", MODE="0660", TAG+="uaccess"
KERNEL=="hidraw*", ATTRS{idVendor}=="054c", ATTRS{idProduct}=="0268", MODE="0660", TAG+="uaccess"

## Motion Sensors
SUBSYSTEM=="input", KERNEL=="event*|input*", KERNELS=="*054C:0268*", TAG+="uaccess"
```

## What is the Official RetroDECK - Steam Input Profile called?

- DualShock 3 / Sixaxis: `RetroDECK: DualShock 3`



## RetroDECK Hotkeys

Read more here:

[RetroDECK: Controller Hotkeys](../../wiki_rd_controls/hotkeys-retrodeck.md)
