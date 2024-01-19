# Xbox One/S/X - Xbox Elite Wireless Controller Series 1/2

<img src="../../../wiki_images/controllers/xbox-elite-wireless-series.png" width="250">

#### Steam Input support
Yes, but not fully. It registers as a Xbox Wireless Controller but the back buttons can not be bound in Steam Input.

### Linux Kernel Support
Yes

### Udev rules

```
# Microsoft Xbox One S Controller; Bluetooth; USB
KERNEL=="hidraw*", KERNELS=="*045e:02ea*", MODE="0660", TAG+="uaccess"
SUBSYSTEMS=="usb", ATTRS{idVendor}=="045e", ATTRS{idProduct}=="02ea", MODE="0660", TAG+="uaccess"
```


### Related Projects

#### The xone Project
[The xone Project](https://github.com/medusalix/xone) <br>
Has firmwares, udev rules and drivers might be needed to get it to run on your distribution to get the wireless connections working.<br>
This should not needed for the Steam Deck, SteamOS and most gaming focus Linux distroes has it included.

## What is the Official RetroDECK - Steam Input Profile called?

- Xbox Wireless Controller/Elite Series: `RetroDECK: Xbox Wireless`
