# Steam Controller - Gordon

<img src="../../../wiki_images/controllers/steam-controller-gordon.png" width="250">

The Steam Controller (Gordon), released on November 10, 2015, is a gamepad developed by Valve Corporation for use with Steam and SteamOS. Featuring customizable controls, dual trackpads, and haptic feedback. It went through numerous revisions and design changes before its final release and was discontinued in 2019

### Steam Input support
Yes

### Linux Kernel Support
Yes, since 4.18 - `hid-steam`

### Udev rules

```
# Valve USB devices
SUBSYSTEM=="usb", ATTRS{idVendor}=="28de", MODE="0666"

# Steam Controller udev write access
KERNEL=="uinput", SUBSYSTEM=="misc", MODE="0660", GROUP="input", OPTIONS+="static_node=uinput"

# Valve HID devices over USB hidraw
KERNEL=="hidraw*", ATTRS{idVendor}=="28de", MODE="0666"

# Valve HID devices over bluetooth hidraw
KERNEL=="hidraw*", KERNELS=="*28DE:*", MODE="0666"
```

## RetroDECK Hotkeys

Read more here:

[RetroDECK: Controller Hotkeys](../../wiki_rd_controls/hotkeys-retrodeck.md)
