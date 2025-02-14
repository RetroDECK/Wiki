# Steam Deck: Neptune

<img src="../../../wiki_images/graphics/steamdeck/rd_sd_screen1.jpeg" width="350">

The Steam Deck, released on February 25, 2022, is a handheld gaming computer developed by Valve Corporation. 

The Steam Deck OLED, introduced on November 16, 2023, features a brighter and larger OLED display, improved battery life, and enhanced cooling features.

The Built-In Controller is known as: Neptune

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

## Input Map

<img src="../../../wiki_images/graphics/steamdeck/steam-deck-inputs.jpg" width="550">

## RetroDECK Hotkeys

Read more here:

[RetroDECK: Controller Hotkeys](../../wiki_rd_controls/hotkeys-retrodeck.md)
