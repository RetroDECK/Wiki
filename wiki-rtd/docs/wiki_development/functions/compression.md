# Compress games


## Compression function

The function is called `/RetroDECK/functions/compression.sh`


## Compression targets reference list

The reference list is located under:

`/RetroDECK/emu-configs/defaults/retrodeck/reference_lists/compression_targets.cfg`

The config is populated with compression formats with within [] and what es-de folders that are targeted for the format compression.
Each system can only have one format.

Each new system has to be on a new line under it's compression format

### Example

[chd]
3do
amigacd32
[rvz]
gc
[zip]
atari2600

- 3do and amigcd32 is converted to chd
- gc is conrverted to rvz
- atari2600 is converted to zip

## How to add new system to compress

1. Make sure the emulator supports the compression format and RetroDECK is using that version that supports it.
2. Add the es-de folder name to `compression_targets.cfg` to the compression format it supports.
