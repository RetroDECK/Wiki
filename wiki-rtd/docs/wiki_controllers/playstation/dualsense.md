# PlayStation 5 - DualSense

<img src="../../../wiki_images/controllers/ps5-dualsense.png" width="250">

### Steam Input support
Yes

### Linux Kernel Support
Yes, since 5.14 - `hid-playstation`

### Sony Firmware Update

You can find the Windows software to update the firmware here:

[Playstation: DualSense Firmware Update](https://controller.dl.playstation.net/controller/lang/en/fwupdater.html)

### Udev rules

```
# Sony DualSense Wireless-Controller; Bluetooth; USB
KERNEL=="hidraw*", KERNELS=="*054C:0CE6*", MODE="0660", TAG+="uaccess"
KERNEL=="hidraw*", ATTRS{idVendor}=="054c", ATTRS{idProduct}=="0ce6", MODE="0660", TAG+="uaccess"
```

## What is the Official RetroDECK - Steam Input Profile called?

- DualSense: `RetroDECK: DualSense`

### RetroDECK Hotkeys

The same hotkeys are used for PS3, PS4, PS5 controllers. Read more here:


[Playstation: RetroDECK Hotkeys](../../wiki_rd_controls/hotkeys-playstation.md)
