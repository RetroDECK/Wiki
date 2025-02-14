# Xbox One/S/X - Xbox Elite Wireless Controller Series 1/2

<img src="../../../wiki_images/controllers/xbox-elite-wireless-series.png" width="250">

The Xbox Elite Wireless Controller Series 1, released on October 2015, is a premium gamepad developed by Microsoft for the Xbox One console. The Series 2, released on November 4, 2019, introduced several improvements including adjustable-tension thumbsticks, shorter hair trigger locks, and a wrap-around rubberized grip.

### Steam Input support

Yes

## Linux Kernel Support

Yes

## Update the firmware

This requires Windows:

[Microsoft: Update Xbox Wireless Firmware](https://support.xbox.com/en-US/help/hardware-network/controller/update-xbox-wireless-controller)


## Udev rules

```
# Microsoft Xbox One S Controller; Bluetooth; USB
KERNEL=="hidraw*", KERNELS=="*045e:02ea*", MODE="0660", TAG+="uaccess"
SUBSYSTEMS=="usb", ATTRS{idVendor}=="045e", ATTRS{idProduct}=="02ea", MODE="0660", TAG+="uaccess"
```

## What is the Official RetroDECK - Steam Input Profile called?

- Xbox Wireless Controller/Elite Series: `RetroDECK: Xbox Wireless`

## The xone Project

[The xone Project](https://github.com/medusalix/xone) 

Has firmwares, udev rules and drivers might be needed to get it to run on your distribution to get the wireless connections working.

This should not needed for the Steam Deck, SteamOS and most gaming focus Linux distroes has it included.

## RetroDECK Hotkeys

Read more here:

[RetroDECK: Controller Hotkeys](../../wiki_rd_controls/hotkeys-retrodeck.md)
