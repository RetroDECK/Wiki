# Component: Add to ES-DE

<img src="../../../../wiki_images/logos/es-de-logo.png" width="75">

## Description 

**Note:**

In ES-DE all applications no matter what it is referred to as an **Emulator**.

In RetroDECK we use the neutral name of **Component**.

### ES-DE General Links:

[ES-DE: Userguide](https://gitlab.com/es-de/emulationstation-de/-/blob/master/USERGUIDE.md)

[ES-DE: FAQ](https://gitlab.com/es-de/emulationstation-de/-/blob/master/FAQ.md)

[ES-DE: Theme List](https://gitlab.com/es-de/themes/themes-list)

[ES-DE: Translations](https://gitlab.com/es-de/emulationstation-de/-/blob/master/TRANSLATIONS.md)

[ES-DE: Changelog](https://gitlab.com/es-de/emulationstation-de/-/blob/master/CHANGELOG.md) 

### ES-DE Development Links:

[ES-DE: Gitlab](https://gitlab.com/es-de/emulationstation-de)

[ES-DE: Roadmap](https://gitlab.com/es-de/emulationstation-de/-/blob/master/ROADMAP.md)

[ES-DE: Issues](https://gitlab.com/es-de/emulationstation-de/-/issues)

[ES-DE: Development Userguide](https://gitlab.com/es-de/emulationstation-de/-/blob/master/USERGUIDE-DEV.md)

[ES-DE: Development Install](https://gitlab.com/es-de/emulationstation-de/-/blob/master/INSTALL-DEV.md)

## RetroDECK Repository: RetroDECK/ES-DE

[RetroDECK/ES-DE](https://github.com/RetroDECK/ES-DE)

RetroDECK Maintains a very light fork of ES-DE with some customizations: 

- Hides specific emulators or systems that RetroDECK don't support yet (Example: Dragon Data Dragon 32).
- Adds systems to ES-DE that it don't support (Example: GZDoom).
- Adds and changes some main menu entries (Example: RetroDECK Configurator, ES-DE Configurations).

## es_find_rules.xml

[ES-DE: es_find_rules.xml Documentation](https://gitlab.com/es-de/emulationstation-de/-/blob/master/INSTALL-DEV.md#es_find_rulesxml)

The `es_find_rules.xml` file is used by ES-DE (EmulationStation Desktop Edition) to help it **find components (emulators)** on your system.

### What does it do?

It defines **rules** that tell ES-DE where to look for:

- **Emulators** (like RetroArch, DOSBox, etc.)
- **Cores** (used by emulators like RetroArch)

| Rule Type     | What it does                                                                 |
|---------------|------------------------------------------------------------------------------|
| `systempath`  | Looks in your system's PATH (like typing a command in terminal)             |
| `staticpath`  | Looks in specific folders you define (absolute paths)                       |
| `corepath`    | Looks for emulator cores (used by RetroArch)                                |

### Adding rules for RetroDECK

#### staticpath

The standard syntax of adding `staticpath` find rule is:

```
<!-- RetroDECK -->
<entry>/app/retrodeck/components/<component_name>/component_launcher.sh</entry>
```
Each of them points towards the components `component_launcher.sh`.

#### systempath

If the system needs a wrapper `systempath` entry is also needed:

```
<!-- RetroDECK -->
<entry>Cemu-wrapper</entry>
```
    
### Where is it in RetroDECK?

**RetroDECK Repository Location:** 

[RetroDECK/ES-DE: linux/es_find_rules.xml](https://github.com/RetroDECK/ES-DE/blob/retrodeck-main/resources/systems/linux/es_find_rules.xml)

**Installed Location:**

| Type    | Folder                 | 
|  :---:  | :---:                  | 
| ES-DE Linux Folder (Local Install) |`~/.local/share/flatpak/app/net.retrodeck.retrodeck/current/active/files/share/retrodeck/components/es-de/share/es-de/resources/systems/linux/` | 
| ES-DE Linux Folder (System Install)|`/var/lib/flatpak/app/net.retrodeck.retrodeck/current/active/files/retrodeck/components/es-de/share/es-de/resources/systems/linux/` | 

### Examples of Entries





#### Primehack

```
  <emulator name="PRIMEHACK">
        <!-- PrimeHack, fork of Nintendo GameCube and Wii emulator Dolphin -->
        <rule type="systempath">
            <entry>primehack</entry>
            <entry>io.github.shiiion.primehack</entry>
            <!-- RetroDECK -->
            <entry>primehack-wrapper</entry>
        </rule>
        <rule type="staticpath">
            <entry>/var/lib/flatpak/exports/bin/io.github.shiiion.primehack</entry>
            <entry>~/.local/share/flatpak/exports/bin/io.github.shiiion.primehack</entry>
            <!-- RetroDECK -->
            <entry>/app/retrodeck/components/primehack/component_launcher.sh</entry>
        </rule>
    </emulator>
```

####  RetroArch

```
    <core name="RETROARCH">
        <rule type="corepath">
            <entry>/app/share/libretro/cores</entry> <!-- RetroDECK -->
            <!-- Non-portable AppImage and compiled from source -->
            <entry>~/.config/retroarch/cores</entry>
            <!-- Portable AppImage -->
            <entry>~/Applications/RetroArch-Linux-x86_64.AppImage.home/.config/retroarch/cores</entry>
            <entry>~/.local/share/applications/RetroArch-Linux-x86_64.AppImage.home/.config/retroarch/cores</entry>
            <entry>~/.local/bin/RetroArch-Linux-x86_64.AppImage.home/.config/retroarch/cores</entry>
            <entry>~/bin/RetroArch-Linux-x86_64.AppImage.home/.config/retroarch/cores</entry>
            <!-- Flatpak package -->
            <entry>~/.var/app/org.libretro.RetroArch/config/retroarch/cores</entry>
            <!-- Snap package -->
            <entry>~/snap/retroarch/current/.config/retroarch/cores</entry>
            <!-- Ubuntu and Linux Mint repository -->
            <entry>/usr/lib/x86_64-linux-gnu/libretro</entry>
            <!-- Fedora repository -->
            <entry>/usr/lib64/libretro</entry>
            <!-- Manjaro repository -->
            <entry>/usr/lib/libretro</entry>
            <!-- RetroDECK -->
            <entry>/app/retrodeck/components/retroarch/component_launcher.sh</entry>
        </rule>
    </core>
```

####  CEMU

```
    <emulator name="CEMU">
        <!-- Nintendo Wii U emulator Cemu -->
        <rule type="systempath">
            <entry>cemu</entry>
            <entry>Cemu</entry>
            <!-- RetroDECK -->
            <entry>Cemu-wrapper</entry>
        </rule>
        <rule type="staticpath">
            <entry>~/Applications/Cemu*.AppImage</entry>
            <entry>~/.local/share/applications/Cemu*.AppImage</entry>
            <entry>~/.local/bin/Cemu*.AppImage</entry>
            <entry>~/bin/Cemu*.AppImage</entry>
            <entry>~/Applications/Cemu/Cemu</entry>
            <entry>~/.local/share/applications/Cemu/Cemu</entry>
            <entry>~/.local/bin/Cemu/Cemu</entry>
            <entry>~/bin/Cemu/Cemu</entry>
            <entry>/var/lib/flatpak/exports/bin/info.cemu.Cemu</entry>
            <entry>~/.local/share/flatpak/exports/bin/info.cemu.Cemu</entry>
            <!-- RetroDECK -->
            <entry>/app/retrodeck/components/cemu/component_launcher.sh</entry>
        </rule>
    </emulator>
```
    
## es_systems.xml

[ES-DE: es_find_rules.xml Documentation ](https://gitlab.com/es-de/emulationstation-de/-/blob/master/INSTALL-DEV.md#es_systemsxml)

The `es_systems.xml` file is a configuration file used by **ES-DE** (EmulationStation Desktop Edition). It tells the system how to handle different game systems.

RetroDECK commits out certain aspects of the standard `es_systems.xml` from the ES-DE repo on gitlab, like Components that had have not been added to RetroDECK yet.

RetroDECK also commits into the RetroDECK's version of `es_systems.xml` and adds components that might not be supported by ES-DE proper like GZDoom.


### What does it include?

Each game system entry in the file defines:

- **System name** (short name)
- **Full name** (display name)
- **ROM path** (where your games are stored)
- **File extensions** (which game file types are allowed)
- **Launch command** (how to start the game)
- **Platform** (used for scraping game data)
- **Theme** (visual style)

### Wildcards are supported for binaries

**Example supported:**

```
<command>~/Applications/xemu*.AppImage %ROM%</command>
<command>~/Applications/xemu*.App* %ROM%</command>
```
**Example not supported:**

```
<command>~/App*/xemu*.AppImage %ROM%</command>
```

### Variable Reference Table

| Variable           | Description |
|--------------------|-------------|
| `%ROMPATH%`        | Path to your ROM folder, set in `es_settings.xml`. |
| `%ROM%`            | Full path to the selected ROM, with special characters escaped. |
| `%ROMRAW%`         | Same as `%ROM%`, but without escaping. Use this if your emulator is picky about paths. |
| `%ROMRAWWIN%`      | Like `%ROMRAW%`, but uses backslashes (`\`) instead of slashes (`/`). Not available on Windows. |
| `%BASENAME%`       | Just the name of the ROM file, without folder or extension. Example: `/games/sonic.rom` → `sonic`. |
| `%FILENAME%`       | Full name of the ROM file, including extension. Example: `/games/sonic.rom` → `sonic.rom`. |
| `%STARTDIR%`       | Sets the starting folder when launching the emulator. Useful for emulators like MAME. |
| `%INJECT%`         | Injects extra launch arguments from a text file. Can be combined with other variables like `%ROM%`. |
| `%EMUPATH%`        | Path to the emulator binary. Used to check if the emulator exists. |
| `%EMUDIR%`         | Folder where the emulator is located. General-purpose version of `%EMUPATH%`. |
| `%GAMEDIR%`        | Folder where the ROM is located. |
| `%GAMEDIRRAW%`     | Same as `%GAMEDIR%`, but without escaping characters. |
| `%ESPATH%`         | Path to the ES-DE application. Useful for portable setups. |
| `%EMULATOR_`       | Uses `es_find_rules.xml` to find the emulator. Recommended method. |
| `%CORE_`           | Uses `es_find_rules.xml` to find the emulator core. Recommended method. |
| `%PRECOMMAND_`     | Finds a pre-launch command (e.g., Wine). Should go before `%EMULATOR_`. |
| `%RUNINBACKGROUND%`| Keeps ES-DE running while the game is playing. Prevents screensavers and other interruptions. |
| `%HIDEWINDOW%`     | (Windows only) Hides the command window when launching a game. |
| `%ESCAPESPECIALS%` | (Windows only) Escapes special characters like `&()^=;` in `%ROM%`. |
| `%ENABLESHORTCUTS%`| (Unix/macOS only) Enables launching `.desktop` or `.app` shortcuts. Requires `%ROM%`. |

### Where is it in RetroDECK?

**RetroDECK Repository Location:** 

[RetroDECK/ES-DE: linux/es_systems.xml](https://github.com/RetroDECK/ES-DE/blob/retrodeck-main/resources/systems/linux/es_systems.xml)

**Installed Location:**

| Type    | Folder                 | 
|  :---:  | :---:                  | 
| ES-DE Linux Folder (Local Install) |`~/.local/share/flatpak/app/net.retrodeck.retrodeck/current/active/files/share/retrodeck/components/es-de/share/es-de/resources/systems/linux/` | 
| ES-DE Linux Folder (System Install)|`/var/lib/flatpak/app/net.retrodeck.retrodeck/current/active/files/retrodeck/components/es-de/share/es-de/resources/systems/linux/` | 



### Examples of Entries

#### Sega Mark III 

- Supported in ES-DE by default.
- Added support in RetroDECK.
- Not all Emulators are included in RetroDECK, those that are not included have been committed out like `Mednafen (Standalone)`.


```
    <system>
        <name>mark3</name>
        <fullname>Sega Mark III</fullname>
        <path>%ROMPATH%/mark3</path>
        <extension>.68k .68K .bin .BIN .bms .BMS .chd .CHD .col .COL .cue .CUE .gen .GEN .gg .GG .iso .ISO .m3u .M3U .md .MD .mdx .MDX .rom .ROM .sg .SG .sgd .SGD .smd .SMD .sms .SMS .7z .7Z .zip .ZIP</extension>
        <command label="Genesis Plus GX">%EMULATOR_RETROARCH% -L %CORE_RETROARCH%/genesis_plus_gx_libretro.so %ROM%</command>
        <command label="Genesis Plus GX Wide">%EMULATOR_RETROARCH% -L %CORE_RETROARCH%/genesis_plus_gx_wide_libretro.so %ROM%</command>
        <command label="SMS Plus GX">%EMULATOR_RETROARCH% -L %CORE_RETROARCH%/smsplus_libretro.so %ROM%</command>
        <command label="Gearsystem">%EMULATOR_RETROARCH% -L %CORE_RETROARCH%/gearsystem_libretro.so %ROM%</command>
        <command label="PicoDrive">%EMULATOR_RETROARCH% -L %CORE_RETROARCH%/picodrive_libretro.so %ROM%</command>
        <!-- <command label="Mednafen (Standalone)">%EMULATOR_MEDNAFEN% -force_module sms %ROM%</command> -->
        <!-- <command label="Mesen (Standalone)">%EMULATOR_MESEN% &ndash;&ndash;fullscreen %ROM%</command> -->
        <!-- <command label="ares (Standalone)">%EMULATOR_ARES% &ndash;&ndash;fullscreen &ndash;&ndash;system "Master System" %ROM%</command> -->
        <!-- <command label="jgenesis (Standalone)">%EMULATOR_JGENESIS% &ndash;&ndash;file-path %ROM%</command> -->
        <platform>mastersystem</platform>
        <theme>mark3</theme>
    </system>
```

#### GZDoom 

- DOOM is supported via other Emulators but not GZDoom in ES-DE by default.
- Added support in RetroDECK.
- Adds a custom format: `<extension>.doom .DOOM` 
- Launches against RetroDECK's own GZDoom Wrapper: `<command label="GZDoom (Standalone)">gzdoom.sh %ROM%</command>` 


```
    <system>
        <name>doom</name>
        <fullname>Doom</fullname>
        <path>%ROMPATH%/doom</path>
        <extension>.doom .DOOM .desktop .ipk3 .IPK3 .iwad .IWAD .pk3 .PK3 .pk4 .PK4 .pwad .PWAD .sh .wad .WAD</extension>
        <command label="GZDoom (Standalone)">gzdoom.sh %ROM%</command>
        <command label="PrBoom">%EMULATOR_RETROARCH% -L %CORE_RETROARCH%/prboom_libretro.so %ROM%</command>
        <!-- <command label="PrBoom+ (Standalone)">%EMULATOR_PRBOOM-PLUS% -iwad %ROM%</command> -->
        <command label="Boom 3">%EMULATOR_RETROARCH% -L %CORE_RETROARCH%/boom3_libretro.so %ROM%</command>
        <command label="Boom 3 xp">%EMULATOR_RETROARCH% -L %CORE_RETROARCH%/boom3_xp_libretro.so %ROM%</command>
        <command label="Shortcut or script">%ENABLESHORTCUTS% %EMULATOR_OS-SHELL% %ROM%</command>
        <platform>pc, pcwindows</platform>
        <theme>doom</theme>
    </system>

```

#### Dragon Data Dragon 32 

- Supported in ES-DE by default.
- Not yet supported in RetroDECK and have been committed out.


```
<!--
    <system>
        <name>dragon32</name>
        <fullname>Dragon Data Dragon 32</fullname>
        <path>%ROMPATH%/dragon32</path>
        <extension>.cas .CAS .ccc .CCC .dsk .DSK .rom .ROM .7z .7Z .zip .ZIP</extension>
        <command label="MAME Dragon 32 [Tape] (Standalone)">%STARTDIR%=~/.mame %EMULATOR_MAME% -rompath %GAMEDIR%\;%ROMPATH%/dragon32 dragon32 -autoboot_delay "4" -autoboot_command "cloadm\"\"\n" -cass %ROM%</command>
        <command label="MAME Dragon 32 [Cartridge] (Standalone)">%STARTDIR%=~/.mame %EMULATOR_MAME% -rompath %GAMEDIR%\;%ROMPATH%/dragon32 dragon32 -cart %ROM%</command>
        <command label="MAME Dragon 64 [Tape] (Standalone)">%STARTDIR%=~/.mame %EMULATOR_MAME% -rompath %GAMEDIR%\;%ROMPATH%/dragon32 dragon64 -autoboot_delay "4" -autoboot_command "cloadm\"\"\n" -cass %ROM%</command>
        <command label="MAME Dragon 64 [Cartridge] (Standalone)">%STARTDIR%=~/.mame %EMULATOR_MAME% -rompath %GAMEDIR%\;%ROMPATH%/dragon32 dragon64 -cart %ROM%</command>
        <command label="XRoar Dragon 32 (Standalone)">%EMULATOR_XROAR% -fs -default-machine dragon32 %ROM%</command>
        <command label="XRoar Dragon 64 (Standalone)">%EMULATOR_XROAR% -fs -default-machine dragon64 %ROM%</command>
        <platform>dragon32</platform>
        <theme>dragon32</theme>
    </system>
-->
```




