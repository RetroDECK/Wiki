# Autoboot into RetroDECK and not Game Mode

This experiment was initiated by the user **Daeymon**. It was later expanded upon by the RetroDECK Team. Daeymon goal was to explore the possibility of autobooting into RetroDECK when the Steam Deck's Game Mode is launched.

**Note:** RetroDECK was never intended to be used in this manner.

### Extra Warning ⚠️

This experiment is extremely dangerous and could damage your Game Mode / SteamOS. Attempting it may cause a bootloop, requiring you to reinstall the Steam Deck and lose all your data.

We do not recommend anyone to attempt this.

### Disclaimer on Experiments 

These experiments are created by the RetroDECK Team and/or Community. The guides are intended for people with technical knowledge and a passion for tinkering. Using these guides *might* put RetroDECK and your data at risk. The RetroDECK Team can't provide any support for these experiments or fix any issues they might cause on your system or RetroDECK installation.

## Prerequisites

### Add RetroDECK to Steam

You need to add RetroDECK to Steam.

## How-to: Configure Autobooting into RetroDECK

You need to be in Desktop Mode.

### Step 1: Get your gameid for RetroDECK

Games published on Steam have a permanent game ID assigned. However, the game ID for non-Steam games is random when they are added to Steam.

The easiest way to get the game ID for non-Steam games is to go to the RetroDECK entry in Steam:

1. Right-click on RetroDECK.
2. Select `Manage`.
3. Click on `Add Desktop Shortcut`.
4. Go to the newly created Desktop Shortcut.
5. Right-click on the shortcut and select `Properties`.
6. Under the `Application` tab, look for the `Arguments` field. It should contain the `steam://rungameid/<RetroDECK_gameid>` command.
7. Copy and save the `RetroDECK gameid` somewhere.

**Example:**

`steam://rungameid/14508945201516511232`

### Step 2: Create the devkit-game Folder & devkit-steam File

1. Go to `/home/deck/`.
2. Create an empty folder called: `devkit-game`.
3. Inside the folder create an empty file called `devkit-steam`.
4. Populate the file with the following, replacing `<RetroDECK_gameid>` with your RetroDECK gameid and be very careful:


```
```bash
#!/bin/bash
steam "$@" steam://rungameid/<RetroDECK_gameid>
```

**Example:**

```
```bash
#!/bin/bash
steam "$@" steam://rungameid/14508945201516511232
```
5. Save the file.
6. Reboot the Steam Deck.
7. RetroDECK and it should now directly boot into RetroDECK.
