# FAQ: Emulation Questions

## What is a ROM File Used by Emulators?

A ROM file is a digital copy of the data from a read-only memory (ROM) chip, typically from a computer or video game cartridge. These files are created by copying the data from the physical hardware to a digital file.  For arcade games, you'll need data from several different chips, grouped together to form a ROM set for that game.

ROM files are used by emulators to mimic the hardware of old gaming systems on modern devices, allowing you to play classic games on your computer, phone, or other devices.


## What are the types of Arcade ROM Sets?

- **Non-Merged Sets**: Contains everything needed for a game in one ZIP file. It's space-inefficient but keeps everything self-contained.
- **Split Sets**: The parent set has all the normal data, and clone sets contain only the changes compared to the parent set. This saves space.
- **Merged Sets**: Combines the parent and clone sets into one ZIP file, which is space-efficient but more complex to manage.


## What are CD Image Formats and Disc Images?

Disc images are exact copies of physical discs. They allow you to play games without using the original discs, which helps preserve them. 

Here we list some common file formats for disc images. 

### .iso (Optical Disc Image)

- The most common disc image format.
- Used for uncompressed disc images.

### .nrg (Nero CD/DVD Image File)

- Created with Nero disc authoring software.
- Used for CD or DVD disc images.

### .bin and .cue (Binary file and Cue sheet)

- .bin file contains the data or audio track.
- .cue file contains the structure details of the disc (you always load the .cue file).

### .mdf and .mds (Media disk Image File and Media Descriptor File)

- .mdf file contains the CD or DVD data.
- .mds file contains the header and track information.

### .chd (Compressed Hunks of Data)

- A lossless compression format originally developed for MAME.
- Compresses the contents of a disc image into a single .chd file.
- Supported by many systems and recommended for 3DO, Dreamcast, Sega CD, Neo Geo CD, PC Engine CD, PSX, PS2, and Saturn.


## Why Are All Emulation Games Called ROMs?

Even if they are disc images, emulation games are often called ROMs because:

- **Historical Reason**: Originally, ROMs were copies of data from game cartridges.
- **General Term**: Over time, "ROM" became a general term for any game file used in emulation.
- **Disc Images**: Disc-based games are often called ISOs, but in emulation, they are still referred to as ROMs.

So, "ROM" is used as a catch-all term for game files in emulation, even if they come from discs.
