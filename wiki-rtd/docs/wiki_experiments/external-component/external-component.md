# Adding an External Component 

<img src="../dolphin-result.png" width="800">

WIP

### Disclaimer on Experiments 

These experiments are created by the RetroDECK Team and/or Community. The guides are intended for people with technical knowledge and a passion for tinkering. Using these guides *might* put RetroDECK and your data at risk. The RetroDECK Team can't provide any support for these experiments or fix any issues they might cause on your system or RetroDECK installation.

---

## Who is this for?

This guide is intended for advanced users who are comfortable experimenting, modifying configurations, and troubleshooting. With sufficient technical expertise, it enables the integration of virtually any compatible component into RetroDECK.


---

### What Is the Difference from the “Adding External Emulators” Experiment?

The difference is substantial.

This method remains fully contained within the RetroDECK Flatpak environment and does not require modifying or breaking it open using `flatpak-spawn`. The component is launched directly through RetroDECK and is treated as a native component by the framework.

Because this approach leverages the same internal tooling used by RetroDECK itself, it provides a high degree of flexibility, consistency, and integration.

In effect, this mechanism exposes RetroDECK’s framework through a dedicated directory, creating an open integration point that allows advanced users to interact directly with the internal framework in a structured and controlled manner.

If implemented correctly and in accordance with RetroDECK’s guidelines, a component may be submitted to the RetroDECK team for review and potential inclusion as an official component in the future as the process is the same.

It also enables the addition of components beyond RetroDECK’s official scope, including software that cannot be distributed by the project due to licensing constraints, proprietary restrictions, or differences in project vision.

This approach grants ULIMITED POWER the tinkering community while preserving the integrity of the core framework.

The power is in your hands!

---

### Requirements and Process

RetroDECK’s framework searches for components in two locations:

- The internal built-in components directory.
- The `retrodeck/storage/retrodeck/external_components` directory.

You will need to:

1. Provide a runnable component (binary, AppImage, or equivalent).

2. Create all required support files and directory structures so RetroDECK can detect and launch the component.

3. Build or obtain the component using one of the following methods:

   - Build with RetroDECK Alchemist (The recommended option).
   - Build from source.
   - Use a precompiled/downloaded binary.
   - Extract from an AppImage.
   - Reuse files from a Flatpak package.

4. Compatibility is not guaranteed, some applications may require additional adjustments or may not function as expected.

5. Manually update ES-DE custom system configurations to enable detection of the new component.

6. Manually configure input mappings, hotkeys, and directory paths to align with RetroDECK’s expected structure.

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





## How-to: Edit es_systems.xml file

### Step 1: Open es_systems.xml

1. Go to the ES-DE custom_systems via the path `retrodeck/ES-DE/custom_systems/`.

2. Find and open `es_systems.xml` in both places.

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

    - Point it towards the `%EMULATOR_FLATPAK-SPAWN% --host` system.
    - Add the `Launch Command` of the external emulator (check How-to). 
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