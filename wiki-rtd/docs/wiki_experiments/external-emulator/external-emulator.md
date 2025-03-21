# Launching External Emulator 

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

Instead, you can install ES-DE from their website and set up the emulators as usual. 

Note that the `es_find_rules.xml` and `es_systems.xml` files you are editing will be overwritten when RetroDECK updates, so you'll need to reapply your changes after each update.


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

The Flatpak paths for RetroDECK vary based on how you installed it. You can install it as either a system or user application.

**Note:**  If you installed RetroDECK as a system application, you will need increased privileges to edit the files.


| Type    | Folder                 |          Comment     | 
|  :---:  | :---:                  |             :---:     |
| **User Application:** ES-DE Linux Folder |`~/.local/share/flatpak/app/net.retrodeck.retrodeck/current/active/files/share/es-de/resources/systems/linux/` | `es_find_rules.xml` `es_systems.xml` |  
| **System Application:** ES-DE Linux Folder  |`/var/lib/flatpak/app/net.retrodeck.retrodeck/current/active/files/share/es-de/resources/systems/linux/` | `es_find_rules.xml` `es_systems.xml` |  

## Requirement: Add the FLATPAKSPAWN System

**Edit the es_find_rules.xml**

1. Go to the ES-DE Linux Folder via the path above (depending on how you installed RetroDECK).

2. Find and open `es_find_rules.xml`.

3. Edit `es_find_rules.xml`:
    - At the end of the file but before `</ruleList>`, add a new system `FLATPAKSPAWN`:
    - Copy & paste:
      ```
      <emulator name="FLATPAKSPAWN">
          <rule type="systempath">
              <entry>flatpak-spawn</entry>
          </rule>
      </emulator>
      ```
4. Save and close the file.


## How-to: Edit es_systems.xml file

### Step 1: Open es_systems.xml

1. Go to the ES-DE Linux Folder via the path above (depending on how you installed RetroDECK).

2. Find and open `es_systems.xml`.

3. Search for and find the system entry you want to add an external system to.

**Example:** GameCube

```
    <system>
        <name>gc</name>
        <fullname>Nintendo GameCube</fullname>
        <path>%ROMPATH%/gc</path>
        <extension>.ciso .CISO .dff .DFF .dol .DOL .elf .ELF .gcm .GCM .gcz .GCZ .iso .ISO .json .JSON .m3u .M3U .rvz .RVZ .tgc .TGC .wad .WAD .wbfs .WBFS .wia .WIA .7z .7Z .zip .ZIP</extension>
        <command label="Dolphin (Standalone)">%INJECT%=%BASENAME%.esprefix %EMULATOR_DOLPHIN% -b -e %ROM%</command>
        <command label="Dolphin">%EMULATOR_RETROARCH% -L %CORE_RETROARCH%/dolphin_libretro.so %ROM%</command>
        <command label="PrimeHack (Standalone)">%INJECT%=%BASENAME%.esprefix %EMULATOR_PRIMEHACK% -b -e %ROM%</command>
        <!-- <command label="Triforce (Standalone)">%INJECT%=%BASENAME%.esprefix %EMULATOR_TRIFORCE% -b -e %ROM%</command> -->
        <platform>gc</platform>
        <theme>gc</theme>
    </system>
```

### Step 2: Modify es_systems.xml

1. Copy and paste one of <command label=> entries and add one or more additional entries.

2. **Modify the command labels values:**

- Point it towards the `%EMULATOR_FLATPAKSPAWN% --host` system.
- Add the real path of the external emulator (check the .desktop files on your system to see where they are pointing).
- Change the label="" so it ends with (External) or any other name you want.

**Examples and results:**

#### Dolphin (Native Application)

`<command label="Dolphin (External Native)"> %EMULATOR_HOST% --host /usr/bin/dolphin-emu -b -e %ROM% </command>`

#### Dolphin (Flatpak Application)

`<command label="Dolphin (External Flatpak)"> %EMULATOR_HOST% --host flatpak run --branch=stable --arch=x86_64 --command=/app/bin/dolphin-emu-wrapper org.DolphinEmu.dolphin-emu -b -e %ROM% </command>`

#### Combined Results

```
    <system>
        <name>gc</name>
        <fullname>Nintendo GameCube</fullname>
        <path>%ROMPATH%/gc</path>
        <extension>.ciso .CISO .dff .DFF .dol .DOL .elf .ELF .gcm .GCM .gcz .GCZ .iso .ISO .json .JSON .m3u .M3U .rvz .RVZ .tgc .TGC .wad .WAD .wbfs .WBFS .wia .WIA .7z .7Z .zip .ZIP</extension>
        <command label="Dolphin (Standalone)">%INJECT%=%BASENAME%.esprefix %EMULATOR_DOLPHIN% -b -e %ROM%</command>
        <command label="Dolphin">%EMULATOR_RETROARCH% -L %CORE_RETROARCH%/dolphin_libretro.so %ROM%</command>
        <command label="PrimeHack (Standalone)">%INJECT%=%BASENAME%.esprefix %EMULATOR_PRIMEHACK% -b -e %ROM%</command>
        <command label="Dolphin (External Flatpak)"> %EMULATOR_HOST% --host flatpak run --branch=stable --arch=x86_64 --command=/app/bin/dolphin-emu-wrapper org.DolphinEmu.dolphin-emu -b -e %ROM% </command>
        <command label="Dolphin (External Native)"> %EMULATOR_HOST% --host /usr/bin/dolphin-emu -b -e %ROM% </command>
        <!-- <command label="Triforce (Standalone)">%INJECT%=%BASENAME%.esprefix %EMULATOR_TRIFORCE% -b -e %ROM%</command> -->
        <platform>gc</platform>
        <theme>gc</theme>
    </system>
```

### Step 3: Save and Launch

**Note:** If you make an error, close RetroDECK before editing the `es_find_rules.xml` or `es_systems.xml` files. Save the files and relaunch RetroDECK, as the files are loaded when the application starts.

1. Save and close the files.

2. Launch RetroDECK.

3. Set the alternative emulators to one of your new entries. They should appear in the Alternative Emulators Menu for each game or system.

4. If everything is correct, the game should launch with the External System. You will need to manually configure it, considering all the drawbacks listed.
