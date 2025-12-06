# PortMaster - General Guide

<img src="../../../wiki_images/logos/portmaster-logo.png" width="150">

PortMaster is a simple GUI tool designed to facilitate the downloading and installation of game ports for Linux devices and is self contained.

One of the goals of PortMaster is to not install or upgrade any existing OS libraries for any ports. Any of the ports that need a particular non-standard library are maintained within the ports' folder and made available specifically to that port during execution. 

**Note:**

Not all ports are available for the `X86_64` system, but the list is continuously growing.

---

### PortMaster Links:

[PortMaster Webpage](https://portmaster.games/index.html)

[PortMaster Github](https://github.com/PortsMaster)

[PortMaster Gamelist](https://portmaster.games/games.html)

[PortMaster FAQ](https://portmaster.games/faq.html)

---

## Does PortMaster require BIOS / Firmware / Other files?

PortMaster does not require BIOS or Firmware but depending on the game you might need to supply the official game files from purchased titles to get them to run.

**Read more:** 

- [PortMaster Games List](https://portmaster.games/games.html)

---

## Folder structure

| Type    | Folder                 |          Comment     | 
|  :---:  | :---:                  |             :---:     |
| Launch Scripts Folder | `retrodeck/roms/portmaster/`   |  This contains the auto generated launch scripts for ES-DE as `.sh` files.   |
| Game Data Folder | `retrodeck/storage/PortMaster/ports/`  |  This contains the game files, savefiles and directories. This is also where you add any required game files.  |

---

## Launching PortMaster

<img src="../pm-mainwindow.png" width="800">

You go into the PortMaster menu in ES-DE and Open `PortMaster`. 

---

## Updating PortMaster

PortMaster is self-contained and will auto-update by itself when launched. 

You can also manually update it by going to `Options` -> `Update PortMaster` and `Update Ports`

---

## How can see what ports that are available?

Go to the [PortMaster Gamelist](https://portmaster.games/games.html) website. 

Filter `Devices` -> `Steam Deck`

You can also combine this with the filters: 

`Ready to Run` - Shows games that you can just download and play.

`Files Needed` - Shows games that you need to provide additional files for.

### Will more games be added?

Yes, the PortMaster team is continuously updating the Ports list. As the application is updated, more ports will be added for `X86_64` systems.

---

## Adding PortMaster Games to RetroDECK

<img src="../pm-banana.png" width="800">

Open `PortMaster` -> `All Ports` and choose the port you want to install (some ports might require additional files).

After you have downloaded the games you want to play exit PortMaster.

**ES-DE: Rescan Rom Directory**

In the ES-DE Frontend go to the Utilities Menu

<img src="../pm-rescan.png" width="800">

<img src="../../../wiki_images/esde/esde-utilities.png" width="800">

Press the `Rescan Rom Directory` to have the games show up (you could also just restart RetroDECK).


---

### If the game requires additional files

Check the [PortMaster Games List](https://portmaster.games/games.html) for details on the specific files needed for each game. You might also need to create new subfolders.

The required files and/or folders should be put inside the `retrodeck/PortMaster/`. 

---


## Can I hide PortMaster in ES-DE? 

Yes, there is a hide PortMaster tool in the RetroDECK Configurator. 
