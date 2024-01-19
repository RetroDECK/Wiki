# GameCube Controller Adapter for Wii U

<img src="../../../wiki_images/controllers/wiiu-gcpad-adapter.png" width="250">

### Steam Input support
Yes, but the connected controllers shows up as Generic Controllers.

### Linux Kernel Support
Yes, acts a normal USB-hub.

### Udev rule

```
# Nintendo GameCube Controller / Adapter; USB
SUBSYSTEM=="usb", ENV{DEVTYPE}=="usb_device", ATTRS{idVendor}=="057e", ATTRS{idProduct}=="0337", MODE="0660", TAG+="uaccess"
```

## How to connect?

In most cases you just need to connect it via USB and put the device in PC mode on the switch.

Sometimes the udev rule is missing and you will need to add it:

1. Open a terminal window
2. Type  `sudo echo 'SUBSYSTEM=="usb", ENV{DEVTYPE}=="usb_device", ATTRS{idVendor}=="057e", ATTRS{idProduct}=="0337", MODE="0666"' | sudo tee -a /etc/udev/rules.d/51-gcadapter.rules > /dev/null`
3. Type  `sudo udevadm control --reload-rules`
4. Sometimes you will need to take out and reinsert the USB connector after you have reloaded the rules.

## What is the Official RetroDECK - Steam Input Profile called?

- Generic Gamecube: `RetroDECK: Generic GameCube`

NOTE: That this will be released at a later date and work has not started on it yet.
