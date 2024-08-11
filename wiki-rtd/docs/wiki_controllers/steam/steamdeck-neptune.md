# Steam Deck: Neptune

<img src="../../../wiki_images/graphics/steamdeck/rd_sd_screen1.jpeg" width="350">

The Valve Steam Deck LCD / OLD Controller also known as Neptune

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

## What are the Official RetroDECK layouts for the Steam Deck?

- `RetroDECK: Steam Deck - Neptune SIMPLE`
- `RetroDECK: Steam Deck - Neptune FULL`

