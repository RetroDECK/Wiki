# Adding an External Component 

W.I.P


<img src="../dolphin-result.png" width="800">


### Disclaimer on Experiments 

These experiments are created by the RetroDECK Team and/or Community. The guides are intended for people with technical knowledge and a passion for tinkering. Using these guides *might* put RetroDECK and your data at risk. The RetroDECK Team can't provide any support for these experiments or fix any issues they might cause on your system or RetroDECK installation.

---

### Directory structure

<img src="../../../wiki_icons/pixelitos/folder-blue-activities.png" width="35">

| Type    | Folder                 |          Comment     | 
|  :---:  | :---:                  |             :---:     |
| **ES-DE Custom Systems:**   |`retrodeck/ES-DE/custom_systems/` | `es_find_rules.xml` `es_systems.xml` |  
| **ES-DE User Application:** ES-DE Linux Folder |`~/.local/share/flatpak/app/net.retrodeck.retrodeck/current/active/files/share/es-de/resources/systems/linux/` | `es_find_rules.xml` `es_systems.xml` |  
| **ES-DE System Application:** ES-DE Linux Folder  |`/var/lib/flatpak/app/net.retrodeck.retrodeck/current/active/files/share/es-de/resources/systems/linux/` | `es_find_rules.xml` `es_systems.xml` | 
| **External Components:**   |`retrodeck/storage/retrodeck/external_components` | Put your component folders here |  

---

## Questions

### Who is this for?

This guide is intended for advanced users / other developers / tinkerers who are comfortable experimenting, modifying configurations, and troubleshooting. With sufficient technical expertise, it enables the integration of virtually any compatible component into RetroDECK.


---

### What Is the Difference from the “Adding External Emulators” Experiment?

The difference is substantial.

This method remains fully contained within the RetroDECK Flatpak environment and does not require modifying or breaking it open using `flatpak-spawn`. The component is launched directly through RetroDECK and is treated as a native component by the framework.

Because this approach leverages the same internal tooling used by RetroDECK itself, it provides a high degree of flexibility and integration opportunities.

This exposes RetroDECK’s framework through the dedicated directory, creating an open integration point that allows advanced users / other developers / tinkerers to interact directly with the internal framework in a structured and controlled manner.

It also enables the addition of components beyond RetroDECK’s official scope, including software that cannot be distributed by the project due to licensing constraints, or differences in project vision (maybe you want to add Kodi to watch movies).

This approach grants ULIMITED POWER the creative community while preserving the integrity of the core framework.

If implemented correctly and in accordance with RetroDECK’s guidelines, a component may be submitted to the RetroDECK team for review and potential inclusion as an official component in the future.


The power is in your hands!

---

### How Does This Benefit Me as a Regular User?

As a regular user, you can benefit from content and configurations created by others without needing advanced technical knowledge.

Community members can share pre-configured packages in something like a `.zip` archive that include all required files and settings. To use them, you typically only need to:

1. Place the provided extracted folder into a designated directory: `retrodeck/storage/retrodeck/external_components`
2. Edit one or two of ES-DE configuration files to integrate the new content in: `retrodeck/ES-DE/custom_systems/` 

#### Example

A user may share a `.zip` archive containing a fully configured component of **Kodi** with all required RetroDECK files included. In this case, you would:

1. Extract the archive into: `retrodeck/storage/retrodeck/external_components/Kodi`
2. Copy and paste the provided configuration lines into two specified files: `retrodeck/ES-DE/custom_systems/`

After completing these steps, the system magically appear and function correctly within RetroDECK.

---

## Requirements and Process

RetroDECK’s framework searches for components in two locations:

- The internal built-in components directory.
- The `retrodeck/storage/retrodeck/external_components` directory.

You will need to:

- Provide a runnable component (binary, AppImage, or equivalent).

- Create all required support files and directory structures so RetroDECK can detect and launch the component.

- Build or obtain the component using one of the following methods:

| Type    |        Comment     | 
|  :---:  |              :---:     |
| **Build with RetroDECK Alchemist**   | Recommended |  
| **Extract from an AppImage**   || 
| **Reuse files from a Flatpak package**  | |  
| **Use a precompiled/downloaded binary**   |  |  
| **Build from source**  |  |  

- Compatibility is not guaranteed, some components may require additional adjustments or may not function as expected.

- Manually update ES-DE custom system configurations to enable detection of the new component.

- Manually configure input mappings, hotkeys, config files and directory paths to align with RetroDECK’s expected structure.



---


## How-to: Edit `es_find_rules.xml` file

### Step 1: Open `es_find_rules.xml`


---


## How-to: Edit es_systems.xml file

### Step 1: Open es_systems.xml

1. Go to the ES-DE custom_systems via the path `retrodeck/ES-DE/custom_systems/`.

2. Find and open `es_systems.xml`.

3. Search for and find the system entry you want to add an external system to in the ES-DE Linux Folder.

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

1. Copy and paste one the full entries you want to edit into the `es_systems.xml` in `retrodeck/ES-DE/custom_systems/`.

2. Modify the command labels values:

    - Point it towards the `%EMULATOR_YOURCOMPONENT%` system.
    - Change the label="" so it ends with (External) or any other name you want.
    
3. Save and close the file.

**Combined Results**

```
    <system>
        <name>gc</name>
        <fullname>Nintendo GameCube</fullname>
        <path>%ROMPATH%/gc</path>
        <extension>.ciso .CISO .dff .DFF .dol .DOL .elf .ELF .gcm .GCM .gcz .GCZ .iso .ISO .json .JSON .m3u .M3U .rvz .RVZ .tgc .TGC .wad .WAD .wbfs .WBFS .wia .WIA .7z .7Z .zip .ZIP</extension>
        <command label="Dolphin (Standalone)">%INJECT%=%BASENAME%.esprefix %EMULATOR_DOLPHIN% -b -e %ROM%</command>
        <command label="Dolphin">%EMULATOR_RETROARCH% -L %CORE_RETROARCH%/dolphin_libretro.so %ROM%</command>
        <command label="PrimeHack (Standalone)">%INJECT%=%BASENAME%.esprefix %EMULATOR_PRIMEHACK% -b -e %ROM%</command>
        <command label="Dolphin (External Flatpak)"> %EMULATOR_FLATPAK-SPAWN% --host flatpak run --branch=stable --arch=x86_64 --command=/app/bin/dolphin-emu-wrapper org.DolphinEmu.dolphin-emu -b -e %ROM% </command>
        <command label="Dolphin (External Native)"> %EMULATOR_FLATPAK-SPAWN% --host /usr/bin/dolphin-emu -b -e %ROM% </command>
        <!-- <command label="Triforce (Standalone)">%INJECT%=%BASENAME%.esprefix %EMULATOR_TRIFORCE% -b -e %ROM%</command> -→
        <platform>gc</platform>
        <theme>gc</theme>
    </system>
```