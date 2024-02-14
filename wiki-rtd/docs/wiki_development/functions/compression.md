# Compress games


## Compression shell script

The location of the scrip is `/RetroDECK/functions/compression.sh`

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


## Compression targets reference list

The reference list is located under:

`/RetroDECK/emu-configs/defaults/retrodeck/reference_lists/compression_targets.cfg`

The config is populated with compression formats with within `[]` and what es-de folders that are targeted for the format compression.
Each system can only have one format.

Each new system has to be on a new line under it's compression format.

This is used by the `find_compatible_compression_format()` function above.

### Example

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

## How to add new system to compress

1. Make sure the emulator supports the compression format and RetroDECK is using that version that supports it.
2. Add the es-de folder name to `compression_targets.cfg` to the compression format it supports.
