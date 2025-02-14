# PlayStation 5 - DualSense

<img src="../../../wiki_images/controllers/ps5-dualsense.png" width="250">

The DualSense controller, released on November 12, 2020, is the wireless gamepad developed by Sony for the PlayStation 5 console. It features haptic feedback, adaptive triggers, and a built-in microphone, providing an immersive gaming experience. The controller has undergone several revisions, including internal adjustments for improved stability and efficiency.

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



## RetroDECK Hotkeys

Read more here:

[RetroDECK: Controller Hotkeys](../../wiki_rd_controls/hotkeys-retrodeck.md)
