# How-to: Compress Files

<img src="../../../wiki_icons/pixelitos/folder-blue-backup.png" width="75">

## The Compression Tool

FILE "FINALFANTASY7-Disc1.bin" BINARY
  TRACK 01 MODE2/2352
    INDEX 01 00:00:00

If the compression function doesn't find the file named exactly FINALFANTASY7-Disc1.bin in that some directory, it won't try to compress.

But that decision will show up in the logs, as 

 ".bin file NOT found at $file_path/$line"
 ".cue file could not be validated. Please verify your .cue file contains the correct corresponding .bin file information and retry."

 And for reference on chd compression, the list we have approved is:

"3do",
 "amigacd32",
 "dreamcast",
 "megacd",
 "neogeocd",
 "pcenginecd",
 "pcfx",
 "psp",
 "psx",
 "ps2",
 "saturn",
 "saturnjp",
 "segacd",
 "tg-cd"
