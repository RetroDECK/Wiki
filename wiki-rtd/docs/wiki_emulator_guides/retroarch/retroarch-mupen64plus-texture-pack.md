# RetroArch:  Mupen64Plus-Next - Texture Pack Guide

The `texture_packs/RetroArch-Mupen64Plus/` represents `/retroarch/system/Mupen64plus/` folder.

**Note:**

Some texture packs could made for a specific version or region of the game. Make sure you have the right rom and textures for it.

## Enable Texture Packs in the Mupen64Plus-Next

- From the `RetroArch Quick Menu`
- Go to `Core Options` -> `GLideN64`
- `Use High-Res Textures` set to `On`
- `Cache Textures` set to `On`
- `Use High-Res Full Alpha Channel` set to `On`
- `Use Hi-Res Storage` set to `On`

Then save the current configuration for that game under `Core Options` -> `Manage Core Options` -> `Save Game Options`

**Optional:**

`Use High-Res Texture Cache Compression` set to `On` - compresses uncompressed HD Textures into .hts files.

## How do I add texture packs that can be used by the Mupen64Plus-Next Core?

- All texture packs go into the `retrodeck/texture_packs/RetroArch-Mupen64Plus/hires_texture/` or `retrodeck/texture_packs/RetroArch-Mupen64Plus/cache/` folder.
- The texture pack have to be extracted from .zip or other compressed format into a folder.

## Compressed textures in .hts files

Compressed textures that are stored in `.hts` files goes into the `texture_packs/RetroArch-Mupen64Plus/cache/` folder.

## Uncompressed textures in loose folders or files

Uncompressed textures that are stored in in loose folders or files  goes into the `texture_packs/RetroArch-Mupen64Plus/hires_texture/` folder.

