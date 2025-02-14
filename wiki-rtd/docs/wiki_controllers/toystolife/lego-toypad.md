### LEGO ToyPad

<img src="../../../wiki_images/controllers/lego-toypad.png" width="250">

The Lego Toypad, released in 2015, is an interactive NFC reader developed by LEGO for the Lego Dimensions game. It allows players to place Lego figures on the pad to bring them into the game and interact with the virtual world.

### Steam Input Support
No

### Linux Kernel Support
Yes, it is an NFC reader USB device.

### Udev rule

`SUBSYSTEM=="usb", ATTRS{idVendor}=="0e6f", ATTRS{idProduct}=="0241", MODE="0666"`

### Emulator usecase
`RPCS3` `Xenia` `CEMU`

## How to configure

`RPCS3` is the only emulator that supports the ToyPad as of this writing.

### Prerequisite: add the udev rule for the ToyPad

You will need root privileges for this.

Open a Terminal Window and execute  the following command to add the udev rule:

```bash
echo 'SUBSYSTEM=="usb", ATTRS{idVendor}=="0e6f", ATTRS{idProduct}=="0241", MODE="0666"' | sudo tee -a /etc/udev/rules.d/71-toypad.rules > /dev/null
sudo udevadm control --reload-rules
```

It should now work in RetroDECK for Lego Dimensions in the RPCS3 emulator.

### RPCS3 - Lego ToyPad Tips

Before you launch Lego Dimensions from RetroDECK you need to keep the following things in mind:

- The ToyPad must be connected to the USB Port Before launching the game in RetroDECK and RPCS3
- The ToyPad must be connected to a USB Port that gives it enough power to run.

Additional Steam Deck information:

- The Steam Deck's USB-C port does not transmit enough power for the ToyPad, you will need use dock or use a powered USB-C hub.

## Emulated ToyPad (W.I.P)

Berny23's that can use an VM or an Raspberry PI might be an alternative solution.

[Lego ToyPad Emulator](https://github.com/Berny23/LD-ToyPad-Emulator)
