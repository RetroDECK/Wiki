# Toys-to-life Controllers

Toys-to-life Controllers is a broad category that encompasses the vast majority of mostly first party controllers that are used to connect collectable toys figures that can via the controller interact with the game.

## LEGO Dimensions

### LEGO ToyPad

<img src="../../wiki_images/controllers/lego-toypad.png" width="250">

#### Steam Input Support
No

#### Linux Kernel Support
Yes, it is an NFC reader USB device.

#### Emulator usecase
RPCS3


#### How-to configure the Toypad

##### Add the udev rule for the Toypad

You will need root privlages for this.

Open a Terminal Window and execute  the following command to add the udev rule:

```bash
echo 'SUBSYSTEM=="usb", ATTRS{idVendor}=="0e6f", ATTRS{idProduct}=="0241", MODE="0666"' | sudo tee -a /etc/udev/rules.d/71-toypad.rules > /dev/null
sudo udevadm control --reload-rules
```

It should now work in RetroDECK for Lego Dimensions in the RPCS3 emulator.

##### Some tips

Before you launch Lego Dimensions from RetroDECK you need to keep the following things in mind:

- The ToyPad must be connected to the USB Port Before launching the game in RetroDECK and RPCS3
- The ToyPad must be connected to a USB Port that gives it enough power to run.

Additional Steam Deck information:

- The Steam Deck's USB-C port does not transmit enough power for the ToyPad, you will need use dock or use a powered USB-C hub.

## Skylanders

### Portal of Power

<img src="../../wiki_images/controllers/portal-of-power.png" width="250">

The Portal of Power is used for the Skylanders game Series.

#### How to configure
WIP


### Traptanium Portal

<img src="../../wiki_images/controllers/traptanium-portal.png" width="250">

The Traptanium Portal is used for the game Skylanders: Trap Team.

#### How to configure
WIP

## Disney Infinity

### Infinity Base

<img src="../../wiki_images/controllers/disney-infinity-base.png" width="250">

#### How to configure
WIP

## Kamen Rider Summonride

### Summonrider Portal

<img src="../../wiki_images/controllers/kamen-rider-summonride-portal.png" width="250">

#### How to configure
WIP
