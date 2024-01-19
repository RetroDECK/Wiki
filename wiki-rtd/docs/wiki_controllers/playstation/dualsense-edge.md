# PlayStation 5 - DualSense Edge

<img src="../../../wiki_images/controllers/ps5-dualsense-edge.png" width="250">

### Steam Input support
Yes

### Linux Kernel Support
Yes, since 6.2 - `hid-playstation`

### Udev rules

```
# Sony DualSense Edge Wireless-Controller; Bluetooth; USB
KERNEL=="hidraw*", KERNELS=="*054C:0DF2*", MODE="0660", TAG+="uaccess"
KERNEL=="hidraw*", ATTRS{idVendor}=="054c", ATTRS{idProduct}=="0df2", MODE="0660", TAG+="uaccess"
```

## What is the Official RetroDECK - Steam Input Profile called?

- DualSense: `RetroDECK: DualSense`

### RetroDECK Hotkeys

The same hotkeys are used for PS3, PS4, PS5 controllers. Read more here:

[Playstation: RetroDECK Hotkeys](playstation-hotkeys.md)
