# Game Compressor

RetroDECK includes a compression tool built into its framework. 

This tool enables compression of ROMs and disc images into more space-efficient formats (e.g. CHD, ZIP, RVZ), while maintaining compatibility with supported emulators. 

---

## Script: `functions/compression.sh`

The core logic for compression is implemented in the shell script located at: 

[compression.sh]](https://github.com/RetroDECK/RetroDECK/blob/cooker/functions/compression.sh)

### Key Functions

| Function | Description / Behavior | Usage |
|----------|------------------------|--------|
| **`compress_game()`** | Compresses a given input file into a target format (`chd`, `zip`, or `rvz`) depending on parameters and system type. The function handles path resolution, file naming, and uses appropriate compression commands (e.g. `chdman`, `zip`, or other tools). | `compress_game <format> <full_path_to_input_file> [system]` |
| **`find_compatible_compression_format()`** | Inspects a file’s path and filename to determine if it belongs to a supported ROM system, and returns which compression format (if any) is compatible for that system — based on configuration.  | `find_compatible_compression_format "$file"` |
| **`cli_compress_all_games()`** | Batch-process wrapper: iterates over all supported systems (or a subset depending on user input), searches for compatible game files, validates them, and compresses them to appropriate format. Offers optional post-compression cleanup (remove original files). | `cli_compress_all_games <compression_format|all>` |
| *(Other internal/utility functions)* | Various utility and helper logic to support validation, cleanup, error handling inside the script. | N/A — internal use |

---

## Compression Targets: Configuration File

Supported compression formats per system are defined in the configuration file `compression_targets.cfg`.  

- This file maps each supported system (i.e. a ROM directory name under `/roms/<system>/`) to exactly one compression format: `chd`, `rvz`, or `zip`. 
- The script uses this mapping to detect which format to use for each ROM when compressing.

⚠️ Because each system may support only one compression format, ensure you assign the correct format before compressing.  

---

## How Compression Works — Workflow Overview

1. User runs the compression tool: either for a single game or for a batch of ROMs.  
2. For each file found under `/roms/<system>/`, the script runs `find_compatible_compression_format()` to detect if the system supports compression and which format.  
3. If a compatible format is found, `compress_game()` is executed to convert the file into the new format (e.g. `.chd`, `.zip`, `.rvz`).  
4. If the user requested post-compression cleanup, original files (e.g. `.iso`, `.cue`, `.bin`, etc.) are optionally removed. This cleanup also handles multi-file disc sets (e.g. `.cue + .bin`).
5. The resulting compressed files remain playable via RetroDECK’s configured emulators.  

This compression workflow can drastically reduce storage usage while keeping games functional. 

---

## Best Practices & Considerations

- Always ensure your emulator supports the target compression format before compressing — especially for disc-based systems.  
- After compression, you may optionally remove original uncompressed files to reclaim space.  
- Compression is best done before adding games to your frontend/library (e.g. before scraping or indexing), to avoid duplicate entries or confusion.  
- If you use a batch compress command (compress-all), be prepared: compressing many games — especially discs (e.g. PS2, Dreamcast) — can take significant time depending on hardware.  

---

## Extending Compression Support

To add or update compression support for a new system:

1. Confirm the emulator supports the intended compression format (CHD, RVZ, or ZIP).  
2. Update `compression_targets.cfg`, adding the system under the correct format header.  
3. If using ZIP compression for a new file type, ensure that only suitable file extensions are included (so as to avoid compression of unsupported or incompatible files).  
4. Run the compression tool and test the resulting files in the emulator to verify they work correctly.  

---

