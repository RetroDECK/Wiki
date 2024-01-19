# Joy-Cons

<img src="../../../wiki_images/controllers/joy-con.png" width="250">

Official Controllers for the Nintendo Switch

### Steam Input support
Yes

### Linux Kernel Support
Yes, since 5.16 - `hid-nintendo`

### Udev rules

```
# Nintendo Switch Joy-Con Charging Grip; USB
KERNEL=="hidraw*", SUBSYSTEM=="hidraw", ATTRS{idVendor}=="057e", ATTRS{idProduct}=="200e", MODE="0660", TAG+="uaccess"

# Nintendo Switch Joy-Con (L); Bluetooth
KERNEL=="hidraw*", KERNELS=="*057E:2006*", MODE="0660", TAG+="uaccess"
KERNEL=="hidraw*", ATTRS{idVendor}=="057e", ATTRS{idProduct}=="2006", MODE="0660", TAG+="uaccess"

# Nintendo Switch Joy-Con (R); Bluetooth
KERNEL=="hidraw*", KERNELS=="*057E:2007*", MODE="0660", TAG+="uaccess"
KERNEL=="hidraw*", ATTRS{idVendor}=="057e", ATTRS{idProduct}=="2007", MODE="0660", TAG+="uaccess"
```

## What is the Official RetroDECK - Steam Input Profile called?

- Switch Pro: `RetroDECK: Switch Joycons`

NOTE: This will be released at a later date and work has not started on it yet.
