# Launching External System 

This experiment was initiated by the user **TopHatCat** and later expanded upon by the RetroDECK Team. **TopHatCat's** goal was to explore the possibility of launching games against external systems like Emulators from within RetroDECK (limited to the systems ES-DE supports). 

**However, doing this defeats the entire purpose of RetroDECK** 

You will not get any of the RetroDECK features for these systems, such as: 

- Hotkeys
- Working Inputs 
- Configurator
- Unified Folders
- Backups
- and everything else!

Essentially, you are creating an Anti-RetroDECK / Bizzaro-RetroDECK inside of RetroDECK. 

>! Absolute Heresy! 

Your system will be cluttered, and you will be bound by each emulator's defaults, which you will need to change to your liking.

**There is no good reason to launch external emulators via RetroDECK**

You can simply install ES-DE from their website and install the emulators as normal, running just ES-DE. 

The files `es_find_rules.xml` `es_systems.xml` you are editing will also be overwritten when RetroDECK updates, so you will need to update them over the updates with your changes.


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

We also recommend that you add RetroDECK to Steam to utilize Steam Input if you need to rebind the system hotkeys manually.

## Folder Structure

Depending how you installed RetroDECK the Flatpak paths are different.

You can either install it as a system or user application.

**Note:** If you have installed RetroDECK as a system application you will need increased privileges to edit the files.


| Type    | Folder                 |          Comment     | 
|  :---:  | :---:                  |             :---:     |
| **User Application:** ES-DE Linux Folder |`~/.local/share/flatpak/app/net.retrodeck.retrodeck/current/active/files/share/es-de/resources/systems/linux/` | `es_find_rules.xml` `es_systems.xml` |  
| **System Application:** ES-DE Linux Folder  |`/var/lib/flatpak/app/net.retrodeck.retrodeck/current/active/files/share/es-de/resources/systems/linux/` | `es_find_rules.xml` `es_systems.xml` |  

## Requirement: Add the FLATPAKSPAWN System

**Edit the es_find_rules.xml**

1. Go to the ES-DE Linux Folder via the path above (depending how you installed RetroDECK). 
2. Find and open `es_find_rules.xml`.
3. Edit `es_find_rules.xml`:

At the end of file but before </ruleList> end add a new emulator `FLATPAKSPAWN`:

Copy & paste:

```
<emulator name="FLATPAKSPAWN">
    <rule type="systempath">
        <entry>flatpak-spawn</entry>
    </rule>
</emulator>
```

4. Save and close the file.

## How-to: Add a Flatpak Emulator

1. Go to the ES-DE Linux Folder via the path above (depending how you installed RetroDECK). 
2. Find and open `es_systems.xml`.
3. Search for and find the system entry you want to add and external system to. 



Local APP:

```
<command label="Dolphin (External)">
%EMULATOR_HOST% --host /usr/bin/dolphin-emu -b -e %ROM%
</command>
```


```
<command label="Dolphin (External)">
%EMULATOR_HOST% --host /usr/bin/dolphin-emu -b -e %ROM%
</command>
```


Example of full:
```
    <system>
        <name>supracan</name>
        <fullname>Funtech Super A'Can</fullname>
        <path>%ROMPATH%/supracan</path>
        <extension>.bin .BIN .7z .7Z .zip .ZIP</extension>
        <command label="MAME - Current">%EMULATOR_RETROARCH% -L %CORE_RETROARCH%/mame_libretro.so "supracan -rompath \"%GAMEDIRRAW%;%ROMPATH%/supracan\" -cart \"%ROMRAW%\""</command>
        <command label="MAME (Standalone)">%EMULATOR_MAME% -inipath /var/config/mame/ini -rompath %GAMEDIR%\;%ROMPATH%/supracan supracan -cart %ROM%</command>
        <platform>supracan</platform>
        <theme>supracan</theme>
    </system>
```
```
    <system>
        <name>switch</name>
        <fullname>Nintendo Switch</fullname>
        <path>%ROMPATH%/switch</path>
        <extension>.nca .NCA .nro .NRO .nso .NSO .nsp .NSP .xci .XCI</extension>
        <command label="Ryujinx (Legacy) (Standalone)">%EMULATOR_RYUJINX% %ROM%</command>
        <command label="Yuzu (via Ponzu)">%INJECT%=%BASENAME%.esprefix %EMULATOR_YUZU% -f -g %ROM%</command>
        <command label="Ryubing (External)">%EMULATOR_FLATPAKSPAWN% --host flatpak run --branch=stable --arch=x86_64 --command=ryujinx-wrapper --file-forwarding io.github.ryubing.Ryujinx %ROM%</command>
        <platform>switch</platform>
        <theme>switch</theme>
    </system>
```
run --branch=stable --arch=x86_64 --command=ryujinx-wrapper --file-forwarding io.github.ryubing.Ryujinx 

<entry>/var/lib/flatpak/exports/bin/org.ryujinx.Ryujinx</entry>
<entry>~/.local/share/flatpak/exports/bin/org.ryujinx.Ryujinx</entry>
