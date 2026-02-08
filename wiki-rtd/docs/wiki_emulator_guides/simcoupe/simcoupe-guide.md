# Guide: SimCoupe

<img src="../../../wiki_images/logos/simcoupe-logo.png" width="150">

SimCoupe is a emulator for the the SAM Coupé - a British Z80-based home computer released in 1989 by Miles Gordon Technology.

⚠️ W.I.P Article - Not yet in RetroDECK ⚠️

---

### SimCoupe Links

<img src="../../../wiki_icons/pixelitos/internet-web-browser.png" width="35">

| Resource | Link |
|----------|------|
| SimCoupe Website | [Link](https://simonowen.com/simcoupe/) |
| SimCoupe GitHub | [Link](https://github.com/simonowen/simcoupe) |
| World of Sam | [Link](https://www.worldofsam.org/) |

---

## Where to put the games

Microvision games should be put under the `retrodeck/roms/microvision/` directory.

---

## What file formats are supported?

<img src="../../../wiki_icons/pixelitos/folder-blue-applications.png" width="35">


| File Format | Description |
|-------------|-------------|
| .dsk        | Extended DSK (EDSK) |
| .mgt        | Sector dump of +D/SAM disks |
| .sad        | SAm Disk format |
| .sbt        | Sam BooTable files |
| .7z         | Compressed archive |
| .zip        | Compressed archive |

---

## Does SimCoupe require BIOS or Firmware?

<img src="../../../wiki_icons/pixelitos/cpu.png" width="35">

No

---

## Directory structure

<img src="../../../wiki_icons/pixelitos/folder-blue-activities.png" width="35">

| Type   | Directory                                         | Comment       |
|:------:|:--------------------------------------------------|:-------------|
| ROMs   | `retrodeck/roms/samcoupe/`                             |               |

---

## SimCoupe User Manual

This section is derived from SimCoupe’s `Manual.md` and has been restructured to
conform to the RetroDECK wiki format. Only Linux-specific and RetroDECK-relevant
content is included.

All credit goes to **Simon Owen** (simon@simonowen.com), the creator of SimCoupe.

---

## Conntrols: Keyboard Input

SimCoupe provides flexible keyboard input to emulate the **SAM Coupé** accurately.

### Input Modes

- **Default SAM Mode**: Letters, digits, and symbols are typed normally and automatically converted to the corresponding SAM key sequences.  
- **Spectrum Mode**: Use when running Spectrum software.  
- **Raw Mode**: Disables automatic key mappings.

### SAM Keypad

The SAM has function keys **F0-F9** on the right side of the keyboard. In SimCoupe, these map to the **numeric keypad**. NumLock must be enabled. When SAM software refers to function keys, use the numeric keypad.

### Emulator Function Keys & Mappings

F1-F12 on your keyboard control emulator functions. On macOS, F9-F12 require the **Command** key due to system shortcuts. Holding **Windows key + F1-F10** generates the corresponding SAM function key (F1-F0). On some Windows versions, Win-F1 triggers Help; use **Win-F11** for SAM F1.

| Key / Combination    | Function Description                        |
|---------------------|--------------------------------------------|
| Alt + F1            | New disk 1                                  |
| Alt + F2            | New disk 2                                  |
| Alt + F4            | Exit application                            |
| Ctrl + Break        | Reset                                       |
| Ctrl + F1           | Save disk 1                                 |
| Ctrl + F2           | Save disk 2                                 |
| Ctrl + F12          | Exit application                            |
| Ctrl + Keypad *     | Reset                                       |
| Ctrl + Keypad -     | Normal emulation speed                       |
| F1                  | Open disk 1                                 |
| F2                  | Open disk 2                                 |
| F3                  | Tape browser                                |
| F4                  | Import data                                 |
| F5                  | Toggle TV aspect ratio                      |
| F6                  | Toggle display smoothing                    |
| F8                  | Toggle full-screen                           |
| F9                  | Debugger                                    |
| F10                 | Options                                     |
| F11                 | NMI Button                                  |
| F12                 | Reset button                                |
| Keypad +            | Increase emulation speed                     |
| Keypad *            | Turbo speed                                 |
| Keypad -            | Reduce emulation speed                       |
| Pause               | Pause emulation                             |
| PrintScrn           | Save SAM screenshot in PNG format           |
| Shift + F1          | Eject disk 1                                |
| Shift + F2          | Eject disk 2                                |
| Shift + F4          | Export data                                 |
| Shift + F9          | Save SAM screenshot in PNG format           |
| Win + Fx            | Generate SAM function key Fx (F1-F0)       |


### Turbo Speed

Activating **Turbo Speed** disables frame synchronization and sound, limiting
the display to **5 frames per second**. This significantly increases emulation
speed, making it useful for quickly navigating slow sections in games, demos,
or long program sequences.

---

### SAM Shift Modifiers & Special Symbols

| Key / Combination       | SAM Function                              |
|-------------------------|-------------------------------------------|
| ` (backtick)            | (c)                                       |
| . (on keypad)           | (c)                                       |
| Delete                  | Shift-Delete                              |
| End                     | Cntrl-Right                               |
| Home                    | Cntrl-Left                                |
| Insert                  | Inv                                       |
| Left-Alt (if enabled)   | Cntrl                                     |
| Left-Ctrl               | Symbol                                    |
| Menu Key                | Edit                                      |
| Numlock                 | Symbol-Edit (toggles SAM BASIC keypad)   |
| Page Down               | F1                                        |
| Page Up                 | F4                                        |
| Right-Alt (if enabled)  | Edit                                      |
| Right-Ctrl              | Cntrl                                     |
| § (section)             | #                                         |



---

## Using Hard Disks - Real or HDF

SimCoupe emulates the **Atom** and **Atom Lite** hard disk interfaces. Atom DOS (BDOS)
is compatible with the original **SAMDOS**, and hard disks are presented as an
array of floppy-sized records, ensuring strong compatibility with existing
software.

SimCoupe supports real hard disks and CompactFlash (CF) cards on providing a fast and reliable method for sharing data with a
real SAM Coupé system. For safety reasons, only **USB-connected** disks can be
accessed by SimCoupe.

### Using Existing Hard Disk Image Files (HDF)

If no physical device is available, existing HDF images can be used:

1. Press **F10** to open the SimCoupe Options.
2. In the **Disks** section, click **“…”** next to the **Atom** interface.
3. Browse to and select an existing **HDF** file.
4. Click **OK** twice and boot **BDOS**.

### Creating and Preparing a New HDF Image

To create a new hard disk image:

1. Press **F10** to open the SimCoupe Options.
2. In the **Disks** section, click **“…”** next to the **Atom** interface.
3. Enter a new file path and size in megabytes  
   *(e.g. 32 MB = 40 floppy records)*.
4. Click **OK** twice to create the disk and return to the emulator.
5. Boot a **BDOS** version *(BDOS 1.6e is recommended)*.
6. With **Floppy drive** selected, press **Cursor Right** to view files.
7. Select **Formatter** and press **Enter**.
8. Press **Enter** again, then **Y** to begin formatting.
9. The HDF image is now ready for use.

**Further Information**

For detailed documentation on BDOS usage, see Edwin Blink’s resources:  

[SamCoupe Pro-DOS](http://www.samcoupe-pro-dos.co.uk/edwin/software/bdos/bdos.htm)

---

## Printing

SimCoupe supports **print-to-file** on all platforms, allowing code listings and
other output to be exported as plain text files.

### Configuration

To enable printing to a file:

1. Press **F10** to open the Options.
2. Select the **Parallel** section.
3. Under **Port 1**, choose **Printer**.
4. In **Printer Device**, select **File: prntNNNN.txt**.
5. Click **OK** to apply the settings.

**Usage**

Most applications can now print normally. Use **LLIST** to print BASIC listings.
Output is written to the **Data Files** directory using an automatically assigned
filename matching the pattern `prntNNNN.txt`.

---

## Options

The following describes all settings available in **Options (`F10`)**.

### System

| Setting | Description |
|---------|-------------|
| Internal RAM | Base SAM model has 256kB main memory, extendable to 512kB with an internal add-on. Many software titles require 512kB. |
| External memory | External add-on packs can extend memory in 1MB blocks. Requires software support (e.g., MasterDOS, MasterBASIC, TopGun Demo). |
| Custom 32K ROM image | If blank, a built-in v3.0 ROM image is used. |
| Use AL-BOOT ROM if Atom Lite is connected | Applies ROM patches to automatically boot from Drive 2 if configured as Atom Lite. Not available with a custom ROM. |

### Display

| Setting | Description |
|---------|-------------|
| Bi-linear filtering (smoothing) | Smooths the display when stretching to fill the SimCoupe window. |

### Sound

| Setting | Description |
|---------|-------------|
| SID Interface | Selects type of SID chip: 6581 (classic, gritty sound) or 8580 (cleaner, brighter). |
| DAC on port 7C | Select DAC device: Blue Alpha (variable speed), SAMVoc, or Paula (simple DAC output). |
| MIDI Out | Select a device for MIDI output, hardware or software synth. |

### Parallel

| Setting | Description |
|---------|-------------|
| Port 1/2 | Select device for the virtual printer port. Options include Printer, Mono-DAC (8-bit mono), EDdac/SAMdac (8-bit stereo, recommended for SAM MOD Player). |
| Printer device | File or device used for output when Printer is selected. "File:" auto-generates a unique file in the Data Files path. |
| Automatically flush print jobs | Flush remaining data to output if no data is sent within 2 seconds. |

### Input

| Setting | Description |
|---------|-------------|
| Keyboard | Converts typed letters and symbols to the corresponding SAM key sequence. Modes: Automatic, Spectrum, Disabled. |
| Use Left-Alt for Cntrl key | Maps Left-Alt to SAM Cntrl key. May block normal Windows menu shortcuts. |
| Use Alt-Gr for Edit key | Maps Right-Alt to SAM Edit key. |
| Enable mouse interface | Activates mouse support for SAM software. Double-click SimCoupe window for BASIC use; press Esc to release. |

### Joystick

| Setting | Description |
|---------|-------------|
| Player 1/2 | Select devices for SAM joystick 1 (keys 6-0), SAM joystick 2 (keys 1-5), or Kempston joystick (Spectrum). |

### Drive 1

| Setting | Description |
|---------|-------------|
| Device | Select if floppy drive 1 is installed. ROM only boots from drive 1. |
| Media | Disk image or real device. |

### Drive 2

| Setting | Description |
|---------|-------------|
| Device | None, Floppy, Atom Classic, or Atom Lite. |
| Media | Disk image or real device. Atom/Atom Lite support Master/Slave drives (HDF images or real devices). Requires permissions to access raw devices. |

### Misc

| Setting | Description |
|---------|-------------|
| SAMBUS clock | Standard clock hardware interface (used by MasterDOS, BDOS). |
| DALLAS clock | Advanced clock hardware supported by BDOS. |
| Show disk drive activity lights | Displays on-screen LEDs (green = floppy, orange = Atom, blue = Atom Lite). |
| Show status messages | Displays status text in the bottom-right corner to confirm actions. |
| Show emulation speed | Shows % of normal SAM speed in the top-right corner. |
| Ask before saving disk image changes | Prompts for confirmation before saving modifications back to disk images. |

### Helpers

| Setting | Description |
|---------|-------------|
| Fast boot after hardware reset | Speeds up cold-boot, bypassing memory test delay. |
| Fast floppy disk access | Speeds up loading/saving from disks. |
| Auto-load media inserted at startup screen | Automatically loads disks and tapes at the stripey boot screen. |
| Allow booting from non-bootable disks | Detects unbootable disks, temporarily replaces them with a bootable image, and restores the original disk after DOS boot. |

---

## Debugger

The SimCoupe debugger provides code, text, data, and graphical memory views, with features like single-stepping, breakpoints, and execution tracing. It starts in disassembly view, highlighting the next instruction, with symbols shown for ROM and custom code (built with `pyz80 --mapfile=`). The register panel displays the current system state.

### Register Panel

- **Registers:** Z80 registers, highlighting changes in pink.
- **IM:** Interrupt mode and IFF1 status (DI/EI).
- **Stat:** Five interrupt flags: O=midi-out, F=frame, I=midi-in, M=mouse, L=line.
- **Scan:** Line number (0-311) and line-cycle (0-383) for current raster position.
- **T:** Cycle offset in frame (0-119807), plus cycles since debugger last active.
- **A/B/C/D:** Four 16K memory banks (ROM/RAM/EXT). Cyan text indicates read-only.
- **L/H/V/M:** LMPR/HMPR/VMPR paging registers and current display mode (1-4).
- **Events:** Upcoming events and cycles until due (FINT, FEND, LINT, LEND, MIDI, MEND, MTXF, MOUS, BLUE, TAPE, ASIC).

### Global Keys

| Key | Function |
|-----|---------|
| A | Enter new view address |
| B | Breakpoint list |
| C | Code trace history |
| D | Disassembly view |
| G | Graphics view |
| H | Change HMPR page |
| L | Change LMPR page |
| M | Change screen mode |
| N | Number view |
| T | Text view |
| V | Change VMPR page |
| Keypad-0 | Toggle ROM0 |
| Keypad-1 | Toggle ROM1 |
| Keypad-2 | Toggle RAM write-protection |
| Keypad-3 | Toggle external RAM |
| Ctrl-T | Toggle debugger transparency |
| Esc | Exit debugger / return to disassembly view |

### Disassembly View Keys

| Key | Function |
|-----|---------|
| S | Toggle symbol display |
| U | Execute until condition |
| Keypad-7 | Single-step 1 instruction |
| Keypad-8 | Step over instruction |
| Keypad-9 | Step out of function |
| Keypad-4 | Step 10 instructions |
| Keypad-4/5/6 | Step 10/100/1000 instructions |
| Ctrl-KP4/5/6 | Step 10K/100K/1M instructions |
| Ctrl-Keypad-8 | Step over with timing (no interrupts, no border contention) |
| Left/Right | Scroll 1 byte |
| Up/Down | Scroll 1 instruction |
| PgUp/PgDn | Scroll 1 page |
| Ctrl-Left/Right | Move PC 1 byte |
| Ctrl-Up/Down | Move PC 1 instruction |
| Return | Enter debugger command mode |

### Text / Number View Keys

| Key | Function |
|-----|---------|
| Up/Down | Scroll 1 line |
| Left/Right | Scroll 1 byte |
| PgUp/PgDn | Scroll 1 page |

### Graphics View Keys

| Key | Function |
|-----|---------|
| 1/2/3/4 | Select screen mode |
| Up/Down | Scroll 1 line |
| Left/Right | Scroll 1 byte |
| Ctrl-Up/Down | Zoom in/out |
| Ctrl-Left/Right | Adjust column width by 1 byte |
| PgUp/PgDn | Scroll 1 column |
| Ctrl-PgUp/PgDn | Scroll 1 page |

### Trace View Keys

| Key | Function |
|-----|---------|
| Space | Toggle single/double register display |
| S | Toggle address symbol display |

### Debugger Command Mode

| Command | Function |
|---------|---------|
| di / ei | Disable / enable interrupts |
| im M | Set interrupt mode M (0-2) |
| reset | Reset emulation |
| nmi | Generate non-maskable interrupt |
| zap | Replace current instruction with NOP |
| call ADDR | Simulate call to address ADDR |
| push W | Push 16-bit value W onto stack |
| pop [reg] | Pop 16-bit value, optionally to register |
| break | Set paging + interrupts to return to BASIC |
| x N | Execute N instructions |
| [x] until COND | Execute until condition is true |
| bpu COND | Breakpoint on condition (permanent) |
| bpx ADDR | Execute breakpoint at ADDR (optional condition) |
| bpm ADDR [r|w|rw] | Memory breakpoint with access specifier |
| bpmr A B [r|w|rw] | Memory range breakpoint from address A for length B |
| bpio P [rw|r|w] | I/O breakpoint on port P |
| bpint I | Breakpoint on interrupt (frame/line/midi) |
| flag +|- sz5h3vnc | Set/reset flag bits |
| bc N | Clear breakpoint N (* = all) |
| bd N | Disable breakpoint N |
| be N | Enable breakpoint N |
| exx | Exchange BC/DE/HL with BC'/DE'/HL' |
| ex de,hl | Exchange DE with HL |
| ld R,N | Load register R with value N |
| r R=N | Load register R with value N |
| out P,N | Write value N to port P |
| poke A,N1[,N2,...] | Poke address A with one or more values |

**Notes:**

- Breakpoints resolve to physical memory; can also use `page:offset` (e.g., `bpx 1:0`).
- Optional `if COND` allows conditional breakpoints.
- Single-stepping HALT enters interrupt handler; step-over executes handler fully.
- Returning to current execution: enter `pc` in new address (`A`) or step normally.
- Conditional expressions highlight current instruction if active.

### Numeric Expressions

**Operators**

- Unary: `+ - ~ ! * =`
- Binary arithmetic: `+ - * / \ %`
- Logical: `&& || and or`
- Comparison: `== != <> < > <= >=`
- Bitwise arithmetic: `& | ^ band bor bxor`
- Bitwise shift: `<< >>`

**Symbols**

- Single registers: `a f b c d e h l i r ixh ixl iyh iyl`
- Double registers: `af bc de hl af' bc' de' hl' ix iy sp pc`
- Paging: `lpage hpage vpage vmode lepage hepage rom0 rom1 wprot`
- Registers: `lepr hepr lpen hpen status lmpr hmpr vmpr midi border addr`
- Interrupts: `ei di iff1 iff2 im`
- I/O: `inval outval`
- Display: `dline sline`
- Execution: `inrom call autoexec`

**Functions**

- `PEEK <addr>` — 8-bit lookup in currently paged RAM
- `DPEEK <addr>` — 16-bit lookup in currently paged RAM

**Expression Examples (UNTIL breakpoints)**

- `hl != =hl` — Break when HL changes
- `peek pc == 0x76` — Break at next HALT
- `outval == 0n123` — Break when 123 is written to any port
- `vmode == 3` — Break when screen mode 3 is selected
- `dpeek sp == 1234` — Break when hex 1234 is top of stack
- `sline == 0` — Break when raster is drawing line 0
- `(a == b) && (b == IXl)` — Break when A, B, IXl equal

**Number Bases**

- Decimal: `0n12345`
- Hex: `0x1234` / `1234h` / `$1234` / `&1234` / `#1234`
- Character: `"a"` or `'a'`
- Binary: `%10101100`
- Octal not supported (leading zeroes ignored)

---
