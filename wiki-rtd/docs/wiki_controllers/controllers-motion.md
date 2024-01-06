# Motion Controllers

Motion Controllers is a small category of specialized first and third party controllers that are designed to primarily be interactive with motion.

---

## Nintendo Motion Controllers


### Wii Remote (Wiimote) & Nunchuck

<img src="../../wiki_images/controllers/wii-mote.png" width="250"><img src="../../wiki_images/controllers/wii-nunchuck.png" width="250">

The main input for the Nintendo Wii.

#### Steam Input support
No

#### Emulator
Dolphin

---

#### Hardware Prerequisites for Dolphin:


<img src="../../wiki_images/devices/wii-bar.png" width="250">

You will need to have a Wii Sensor Bar alternative.

You need to have at least one Bluetooth dongle or built-in Bluetooth adapter:

- If you have a dongle make sure it has Linux support that has a a good signal reach.


#### Steam Deck Tips:

The recommended method of playing is docked connected to a monitor/tv and to have a separate Bluetooth dongle attached to the dock.

- You need to have set a sudo password for the Steam Deck.

- It could be helpful to have a Keyboard / Mouse connected to the dock while setting everything up.

- It is good to sit close to the Steam Deck when paring the Wiimotes.

- As of now it is easier to configure Wiimotes in `Desktop Mode` then transfer over to `Game Mode` when everything is working (we will make easier tools later in the Configurator).
    - Open up Dolphin by launching it from the stand alone Configurator.
    - Make all the settings changes to connect the Wiimotes from the methods here on this page.
    - Try to launch a game from `Desktop Mode` directly in Dolphin by clicking on a game in the Dolphin interface.
    - If the paring works, the Wiimotes connects and the game controls fine with the Wiimotes in `Desktop Mode` it will as intended in `Game Mode` when launched from RetroDECK.


#### RetroDECK Sync Wiimote Hotkey

RetorDECK has a built-in hotkey for pressing the Dolphins `Sync Wiimote` button `Alt + W` if you find yourself disconnected.<br>
It can also be accessed from some controllers radial menu systems on for example the Steam Deck.

---


#### How-to configure Dolphin - Method 1: Bluetooth Connection

This only works with the Official Wiimote controller and is the easier method.

WIP

---


#### How-to configure Dolphin - Method 2: Bluetooth Passthrough

This works with both 3rd party Wiimotes and Official and is a harder method.

**🛑 Warning 🛑**<br>

- This method will make the Bluetooth adapter unusable for other devices while playing Wii Games and not other devices can connect to it except Wiimotes.

- If you need other devices connected, it is recommended to buy a separate Bluetooth dongle that works on Linux and use that.



Source: [Dolphin Wiki: Bluetooth_Passthrough](https://wiki.dolphin-emu.org/index.php?title=Bluetooth_Passthrough)

##### Step 1: Find your Vendor and Product ID's

First you need to find our your `Vendor ID` `Product ID` for the Bluetooth adapter you want to use.

1. Open a terminal window
2. Type `lsusb`
3. It will now display all connected USB or BUS devices that you have connected. Example:

```
Bus 001 Device 003: ID 0bda:5650 Realtek Semiconductor Corp.
Bus 001 Device 004: ID 8087:0025 Intel Corp. Wireless-AC 9260 Bluetooth Adapter
```

`ID 8087:0025 Intel Corp. Wireless-AC 9260 Bluetooth Adapter` is the Bluetooth Adapter in this example.

The `ID 8087:0025` left value is the `Vendor ID` while the right is `Product ID`.<br>
Thus in this example: `Vendor ID` is `8087`:`Product ID` is `0025`.

##### Step 2: Create the rules file

You will need root privlages for this.

Type type the following command and replace `Vendor ID` and `Product ID` respectively.:

`sudo echo 'SUBSYSTEM=="usb", ATTRS{idVendor}=="Vendor ID", ATTRS{idProduct}=="Product ID", TAG+="uaccess"' | sudo tee -a /etc/udev/rules.d/52-dolphin.rules > /dev/null`

from the example above the result should look like this:

`sudo echo 'SUBSYSTEM=="usb", ATTRS{idVendor}=="8087", ATTRS{idProduct}=="0025", TAG+="uaccess"' | sudo tee -a /etc/udev/rules.d/52-dolphin.rules > /dev/null`

2. Reload udev rules with: `sudo udevadm control --reload-rules`
3. Take out and reinsert the Bluetooth adapter or reboot if a built-in was used.

##### Step 3: Enable Bluetooth Passthrough in Dolphin

Open `RetroDECK Configurator` -> `Open Emulator` -> `Dolphin` -> `Options` -> `Controller Settings`

<img src="../../wiki_images/emulators/dolphin/dolphin-bluetooth-pass.png" width="450">

Change Bluetooth type:

- From `Emulate the Wii's Bluetooth adapter` to `Passthrough a Bluetooth Adapter`

Enable the following checkboxes:

<img src="../../wiki_images/emulators/dolphin/dolphin-connect-scan.png" width="450">

- `Connect Wii Remotes for Emulated Controllers`
- `Continous Scanning`

##### Step 4: Syncing the Wiimotes

The Wiimote can now be connected when a game is launched, but it will not connect before that.
It will need to reconnect every time when launching a new game.

You will need to `Sync Wiimote` by pressing  `1` and `2` together on the Wiimote or the `Sync Button` (under the backplate), when launching a game.

Sometimes you will also need to press the `Sync Button` on the Emulated Wii in the Dolphin Interface, this can be found in the controller menu in Dolphin or RetroDECK has a built in shortcut for this `Alt + W` that is also be accessed from the RetroDECK Radial Menu system on the Steam Deck while in `Game Mode` under Dolphin.

##### Extra: Troubleshooting and tips

- Always sit close to the device when you are doing the initial paring.
- Sometimes it can take a while before the paring happens, specially on 3rd party Wiimotes. You might need to try multiple times with both the `Sync Button` + `Sync Wiimote`.
- If you want to play with normal controllers as Wiimotes again the best way is to change back to: `Emulate the Wii's Bluetooth adapter` setting.
- If the udev rules you created in Step 2 are wrong and Dolphin can not get Bluetooth access, it will display a error message and crash. If that happens go back and make sure that the file in `/etc/udev/rules.d/52-dolphin.rules` and the content is correct.

---

### Wii Balance Board

<img src="../../wiki_images/controllers/wii-balance-board.png" width="250">

Used for various fitness games on the Nintendo Wii the most famous being `Wii Fit`.

#### How to configure

WIP

---

### Ring Fit

<img src="../../wiki_images/controllers/ring-fit.png" width="250">

Used for `Ring Fit Adventure` the fitness game on the Nintendo Switch.

#### How to configure

WIP

---

## PlayStation Motion Controllers


### PlayStation EyeToy

<img src="../../wiki_images/controllers/playstation-eye-toy.png" width="250">

Used for various titles on the PlayStation 2 the most famous being the `EyeToy` game series.

#### Emulator
PCSX2


#### How to emulate in PCSX2

You need to have a `USB Webcam` connected or an `Integrated Webcam`.

- Open `RetroDECK Configurator`
- Open `PCSX2`
- Go to `Settings` -> `Controllers` -> Select `USB Port` -> Select `Webcam (EyeToy)` from the Dropdown list -> Select the `Device Name` of your connected Camera from the Dropdown list.

---

### PlayStation Eye & PlayStation Move

<img src="../../wiki_images/controllers/playstation-eye.png" width="250"><img src="../../wiki_images/controllers/playstation-move.png" width="250">

Used for various titles on the PlayStation 3.

#### Emulator
RPCS3

#### How to configure / emulate

WIP

---

## Xbox Motion Controllers

### Xbox 360 Kinect

<img src="../../wiki_images/controllers/xbox-kinect-360.png" width="250">

Used for various titles on the Xbox 360.

#### Emulator
Xenia


#### How to configure / emulate

WIP

---

### Xbox One Kinect

<img src="../../wiki_images/controllers/xbox-kinect-one.png" width="250">

Used for various titles on the Xbox One.

#### How to configure / emulate

---

## Other Motion Controllers


### RIDE Balance Board

<img src="../../wiki_images/controllers/ride-controller.png" width="250">

Used for the Activision games `Tony Hawk Ride` and `Tony Hawk Shread`.

#### Emulator
RPCS3, Dolphin

#### How to configure

WIP
---
