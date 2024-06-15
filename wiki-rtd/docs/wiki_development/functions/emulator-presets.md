# Making Emulator Presets for the Configurator

**What are Emulator Presets?**


"Presets" are really just collections of config changes across one or more emulators. RetroDECK has pre-configured configs for all emulators (https://github.com/XargonWan/RetroDECK/tree/main/emu-configs) that sets up things like basic controller bindings, optimal graphics settings etc. The pre-configured settings are considered the "default" states, and by default all preset changes are disabled.


TLDR:

Make sure the emulator you want to make a preset for is in its default RetroDECK state. Open the emulator and change the settings needed for the preset. Either diff the emulator settings file against the default or generate a RA override file. If working in RA, make sure to note the full path to the override file.

## Stand-alone Emulator / Engine presets

To build a new preset for an emulator that isn't a RetroArch core, we open the emulator manually, make any changes needed to put the emulator settings in whatever state it should be when the preset is enabled, and then diff the default and current settings to collect whatever changed. Eg. If we were building a preset where the emulator would auto-save state when closed and auto-open state when run, open the emulator, go to settings, enable those features and then diff the emulator running config vs the RetroDECK defaults.

## RetroArch presets

RetroArch uses a different process because it uses override files, so we don't need to change the core config file. Run a game in the RA core you want to build a preset for, open the Quick Menu (L3+R3) change the settings that are needed for the preset then under Quick Menu use the Save Core Override option. This generates an override file in a path we also need to know [RetroArch Overrides](https://docs.libretro.com/guides/overrides/) and we can generally use the entire contents of the override file in the preset.

## Where do you store the presets?

Once we have the settings that need to change for the new preset, and the core override path for RA cores if needed, they are stored in emulator or core-specific files that hold all settings for all presets for that emulator [RetroDECK Presets](https://github.com/XargonWan/RetroDECK/tree/main/emu-configs%2Fdefaults%2Fretrodeck%2Fpresets) These files contain any setting changes needed for any preset for each emulator to be considered "enabled".

## Enable a preset

When a preset is enabled for one or more emulators, these settings are changed from the "enabled" reference files. When a preset is disabled, the setting values from the "default" files are used.

There are some other factors like validating that two presets the user wants enabled at the same time don't conflict (like you can't have both borders and widescreen enabled at the same time) but that is the basics of gathering information for presets.

Depending on the settings being gathered, all this can probably be done on any system and not necessarily on a Deck running RetroDECK, the settings are the same either way. Generally settings relating either to the screen/visual output or controls should be done on a Deck, so make sure we capture correct values.


