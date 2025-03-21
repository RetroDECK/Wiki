# Launching External Emulators 

This experiment was initiated by the user **TopHatCat:** and later expanded upon by the RetroDECK Team. The goal was to explore the possibility of launching external emulators games and via RetroDECK of ES-DE supported systems.

The main downside of this is that you are getting none of the RetroDECK Features for these emulator: Hotkeys, Configurator, Unified Folders, Backups etc.. etc...

You are bound by each emulators defaults and you will need to personally change them to your liking. 

### Disclaimer on Experiments 

These experiments are created by the RetroDECK Team and/or Community. The guides are intended for people with technical knowledge and a passion for tinkering. Using these guides *might* put RetroDECK and your data at risk. The RetroDECK Team can't provide any support for these experiments or fix any issues they might cause on your system or RetroDECK installation.


## Prerequisites

### Flatpak Spawn Permission

**Information:**

This experiment requires the `flatpak-spawn` permission, which breaks the sandbox environment that RetroDECK operates in. Therefore, we do not recommend attempting this unless you are confident in your understanding of the process and its implications.

You can enable it by running this command in the terminal.

```
flatpak override --user --talk-name=org.freedesktop.Flatpak net.retrodeck.retrodeck
```

### Add RetroDECK to Steam

We also recommend that you add RetroDECK to Steam to utilize Steam Input if you need to rebind the emulators hotkeys manually.

## Folder Structure

Depending how you installed RetroDECK the Flatpak paths are different.

You can either install it as a system or user application.

| Type    | Folder                 |          Comment     | 
|  :---:  | :---:                  |             :---:     |
| **User Application:** ES-DE Linux Folder |`~/.local/share/flatpak/app/net.retrodeck.retrodeck/current/active/files/share/es-de/resources/systems/linux/` | `es_find_rules.xml` `es_systems.xml` |  
| **System Application:** ES-DE Linux Folder  |`/var/lib/flatpak/app/net.retrodeck.retrodeck/current/active/files/share/es-de/resources/systems/linux/` | `es_find_rules.xml` `es_systems.xml` |  

## How-to add an Flathub installed Emulator


1. Go to the ES-DE Linux Folder via the path above (depending how you installed RetroDECK). 
2. Find and open `es_find_rules.xml` (if you have RetroDECK installed as a System Application, you will need more permissions).
3. At the end of file add a new ruleset

```
<emulator name="HOST">
    <rule type="systempath">
        <entry>flatpak-spawn</entry>
    </rule>
</emulator>
```


This is the hard part. Now for the easy part.


To add an external emulator:

Go to your root directory to search for es_systems.xml

There will be multiple copies, find the one in a directory called Linux. Go to the directory, not the file.
[8:36 AM]TopHatCat: .
You'll find in the directory a file named es_find_rules.xml

Open the file. And start adding a new emulator with a memorable, but generic name

Here's my example

```
XML
<command label="Dolphin (External)">
%EMULATOR_HOST% --host /usr/bin/dolphin-emu -b -e %ROM%
</command>
```

 Replace the EMULATOR_HOST with whichever name you picked before and viola.

You will need to know the path to your emulator's executable if a similar emulator exists in retrodeck cause, despite not trying it, I'm 99% sure it'll prioritize the local one than the host's 
[8:44 AM]TopHatCat: That's why I used /usr/bin/dolphin-emu
