# Compress games


## Compression shell script

The shell script:

[functions/compression.sh](https://github.com/XargonWan/RetroDECK/blob/main/functions/compression.sh)

With in the script there are several functions.


### compress_game()

Description:
```
  # Function for compressing one or more files to .chd format
  # USAGE: compress_game $format $full_path_to_input_file
```

### find_compatible_compression_format()


Description:
```
  # This function will determine what compression format, if any, the file and system are compatible with from the compression_targets.cfg
  # USAGE: find_compatible_compression_format "$file"
```

### validate_for_chd()

Description:
```
  # Function for validating chd compression candidates, and compresses if validation passes. Supports .cue, .iso and .gdi formats ONLY
  # USAGE: validate_for_chd $input_file
```


### cli_compress_single_game()

Description:
```
  # This function will compress a single file passed from the CLI arguments
  # USAGE: cli_compress_single_game $full_file_path
```

### cli_compress_all_games()
Description:
```
  # This function will compress a all games passed from the CLI arguments
```


## Reference list: compression_targets.cfg

This is used by the `find_compatible_compression_format()` function above.

The reference list:

[emu-configs/defaults/retrodeck/reference_lists/reference_lists/compression_targets.cfg](https://github.com/XargonWan/RetroDECK/blob/main/emu-configs/defaults/retrodeck/reference_lists/compression_targets.cfg)

The config is populated with compression formats with within `[]`.
Each new system has to be on a new line under it's compression format.

Each system can only have one format and is using the es-de roms subfolders default names under `/roms/`.<br>

**Example:** <br>
You want to add `gb` to the list.

- Make sure that the subfolder under roms also called the same: `roms/gb`
- Then add the `gb` entry to under the `[zip]`

### Example from compression_targets.cfg

```
[chd]
3do
amigacd32
[rvz]
gc
[zip]
atari2600

```

- 3do and amigcd32 is compressed to chd
- gc is compressed to rvz
- atari2600 is compressed to zip

## Reference list: zip_compressable_extensions.cfg

This is used by the `find_compatible_compression_format()` function above.

The [zip_compressable_extensions.cfg](https://github.com/XargonWan/RetroDECK/blob/main/emu-configs/defaults/retrodeck/reference_lists/zip_compressable_extensions.cfg) contains the list of file exstensions that can be zipped into a .zip file and used by the systems that have enabled .zip compression in the `compression_targets.cfg`. This is to make sure only supported file formats are compressed and remove the risk of a double compression.


### Example from zip_compressable_extensions.cfg

List of file extensions

```
.32x
.68k
.NDS
.a26
.a52
.a78
.abs
```


## Tips on adding new system to compress

1. Make sure the emulator supports the compression format and RetroDECK is using that version that supports it.
2. Verify that it does work with the emulator.
3. Make sure the system supports the compression format file format under the `<extension>` for that system in the [es_systems.xml](https://github.com/XargonWan/RetroDECK/blob/main/es-configs/es_systems.xml)  file. Otherwise it won't be found after it is compressed in the interface.
4. Add the es-de folder name to `compression_targets.cfg` to the compression format it supports. If it is a new format that you want to compress to a .zip, add the new file extention to `zip_compressable_extensions.cfg`

