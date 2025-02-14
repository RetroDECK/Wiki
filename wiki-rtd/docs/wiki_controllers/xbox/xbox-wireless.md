## Xbox One/S/X - Xbox Wireless Controller

<img src="../../../wiki_images/controllers/xbox-wireless.png" width="250">

The Xbox Wireless controller for the Xbox One S and X, released on August 2, 2016, is an updated version of the original Xbox One controller. It features Bluetooth connectivity, a 3.5mm audio jack, and several design improvements for better ergonomics and functionality. 

The controller has undergone three revisions, with each revision introducing various changes to its design and functionality.

### Steam Input support

Yes

### Linux Kernel Support

Yes

### Update the firmware

This requires Windows:

[Microsoft: Update Xbox Wireless Firmware](https://support.xbox.com/en-US/help/hardware-network/controller/update-xbox-wireless-controller)


## Udev rules

```
# Microsoft Xbox One S Controller; Bluetooth; USB
KERNEL=="hidraw*", KERNELS=="*045e:02ea*", MODE="0660", TAG+="uaccess"
SUBSYSTEMS=="usb", ATTRS{idVendor}=="045e", ATTRS{idProduct}=="02ea", MODE="0660", TAG+="uaccess"
```


## The xone Project

[The xone Project](https://github.com/medusalix/xone) 

Has firmwares, udev rules and drivers might be needed to get it to run on your distribution to get the wireless connections working.

This should not needed for the Steam Deck, SteamOS and most gaming focus Linux distroes has it included.

## What is the Official RetroDECK - Steam Input Profile called?

- Xbox Wireless Controller/Elite Series: `RetroDECK: Xbox Wireless`


## RetroDECK Hotkeys

Read more here:

[RetroDECK: Controller Hotkeys](../../wiki_rd_controls/hotkeys-retrodeck.md)
