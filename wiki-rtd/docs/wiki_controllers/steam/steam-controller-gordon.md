# Steam Controller - Gordon

<img src="../../../wiki_images/controllers/steam-controller-gordon.png" width="250">

The first Steam Controller with the nickname Gordon.

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
