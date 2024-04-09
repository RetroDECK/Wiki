# PlayStation 4 - DualShock 4

<img src="../../../wiki_images/controllers/ps4-dualshock4.png" width="250">

### Steam Input support
Yes

### Linux Kernel Support
Yes, 3.15  `hid-sony`, replaced in 6.2 by `hid-playstation`

### Udev rules

```
# Sony PlayStation DualShock 4; Bluetooth; USB
KERNEL=="hidraw*", KERNELS=="*054C:05C4*", MODE="0660", TAG+="uaccess"
KERNEL=="hidraw*", ATTRS{idVendor}=="054c", ATTRS{idProduct}=="05c4", MODE="0660", TAG+="uaccess"

# Sony PlayStation DualShock 4 Slim; Bluetooth; USB
KERNEL=="hidraw*", KERNELS=="*054C:09CC*", MODE="0660", TAG+="uaccess"
KERNEL=="hidraw*", ATTRS{idVendor}=="054c", ATTRS{idProduct}=="09cc", MODE="0660", TAG+="uaccess"

# Sony PlayStation DualShock 4 Wireless Adapter; USB
KERNEL=="hidraw*", ATTRS{idVendor}=="054c", ATTRS{idProduct}=="0ba0", MODE="0660", TAG+="uaccess"
```

## What is the Official RetroDECK - Steam Input Profile called?

- DualShock 4: `RetroDECK: DualShock 4`

### RetroDECK Hotkeys

The same hotkeys are used for PS3, PS4, PS5 controllers. Read more here:


[Playstation: RetroDECK Hotkeys](../../wiki_rd_controls/hotkeys-playstation.md)
