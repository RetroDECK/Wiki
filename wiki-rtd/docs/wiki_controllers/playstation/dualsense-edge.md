# PlayStation 5 - DualSense Edge

<img src="../../../wiki_images/controllers/ps5-dualsense-edge.png" width="250">

### Steam Input support
Yes

### Linux Kernel Support
Yes, since 6.2 - `hid-playstation`

### Sony Firmware Update

You can find the Windows software to update the firmware here:

[Playstation: DualSense Firmware Update](https://controller.dl.playstation.net/controller/lang/en/fwupdater.html)

### Udev rules

```
# Sony DualSense Edge Wireless-Controller; Bluetooth; USB
KERNEL=="hidraw*", KERNELS=="*054C:0DF2*", MODE="0660", TAG+="uaccess"
KERNEL=="hidraw*", ATTRS{idVendor}=="054c", ATTRS{idProduct}=="0df2", MODE="0660", TAG+="uaccess"
```

## What is the Official RetroDECK - Steam Input Profile called?

- DualSense: `RetroDECK: DualSense`


## RetroDECK Hotkeys

Read more here:

[RetroDECK: Controller Hotkeys](../../wiki_rd_controls/hotkeys-retrodeck.md)
