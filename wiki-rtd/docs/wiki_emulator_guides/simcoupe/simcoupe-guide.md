# Guide: SimCoupé

<img src="../../../wiki_images/logos/simcoupe-logo.png" width="150" alt="Simcoupe logo">

SimCoupé is a emulator for the the SAM Coupé - a British Z80-based home computer released in 1989 by Miles Gordon Technology.

⚠️ W.I.P Article - Not yet in RetroDECK ⚠️

---

### SimCoupé Links

<img src="../../../wiki_icons/pixelitos/internet-web-browser.png" width="35" alt="">

| Resource | Link |
|----------|------|
| SimCoupé Website | [Link](https://simonowen.com/simcoupe/) |
| SimCoupé GitHub | [Link](https://github.com/simonowen/simcoupe) |
| World of Sam | [Link](https://www.worldofsam.org/) |

---

## Where to put the games

Samcoupe games should be put under the `retrodeck/roms/samcoupe/` directory.

---

## What file formats are supported?

<img src="../../../wiki_icons/pixelitos/folder-blue-applications.png" width="35" alt="">


| File Format | Description |
|-------------|-------------|
| .dsk        | Extended DSK (EDSK) |
| .mgt        | Sector dump of +D/SAM disks |
| .sad        | SAm Disk format |
| .sbt        | Sam BooTable files |
| .7z         | Compressed archive |
| .zip        | Compressed archive |

---

## Does SimCoupé require BIOS or Firmware?

<img src="../../../wiki_icons/pixelitos/cpu.png" width="35" alt="">

No

---

## Directory structure

<img src="../../../wiki_icons/pixelitos/folder-blue-activities.png" width="35" alt="">

| Type   | Directory                                         | Comment       |
|:------:|:--------------------------------------------------|:-------------|
| ROMs   | `retrodeck/roms/samcoupe/`                             |               |

---

## SimCoupé User Manual

This section is derived from SimCoupé’s `Manual.md` and has been restructured to
conform to the RetroDECK wiki format. Only Linux-specific and RetroDECK-relevant
content is included.

All credit goes to **Simon Owen** (simon@simonowen.com), the creator of SimCoupé.

---

### Controls: ⌨️ Keyboard & 🖱️ Mouse

Cannot be played with a controller easily and is best used with a physical keyboard and mouse.

| **Shortcut** | **Action** |
|---|---|
| <kbd>↑</kbd><kbd>↓</kbd><kbd>←</kbd><kbd>→</kbd> | Movement |
| <kbd>Q</kbd><kbd>A</kbd><kbd>O</kbd><kbd>P</kbd> | Alternative movement (some games) |
| <kbd>NumPad 8</kbd><kbd>4</kbd><kbd>6</kbd><kbd>2</kbd> | Alternative movement (some games) |
| <kbd>Space</kbd> | Fire / Jump / Action |
| <kbd>NumPad 0</kbd> | Fire / Action (some games) |
| <kbd>Enter</kbd> | Start / Confirm |
| <kbd>Esc</kbd> | Menu / Quit (game-dependent) |
| <kbd>Alt</kbd>+<kbd>F4</kbd> | Exit application |


### Input Modes

- **Default SAM Mode**: Letters, digits and symbols are typed normally and automatically converted to the corresponding SAM key sequences.  
- **Spectrum Mode**: Use when running Spectrum software.  
- **Raw Mode**: Disables automatic key mappings.

### SAM Keypad

The SAM has function keys **F0-F9** on the right side of the keyboard. In SimCoupé, these map to the **numeric keypad**. NumLock must be enabled. When SAM software refers to function keys, use the numeric keypad.

### Emulator Hotkeys

F1-F12 on your keyboard control emulator functions. On macOS, F9-F12 require the **Command** key due to system shortcuts. Holding **Windows key + F1-F10** generates the corresponding SAM function key (F1-F0). On some Windows versions, Win-F1 triggers Help; use **Win-F11** for SAM F1.

| **Shortcut** | **Action** |
|---|---|
| <kbd>Alt</kbd>+<kbd>F1</kbd> | New disk 1 |
| <kbd>Alt</kbd>+<kbd>F2</kbd> | New disk 2 |
| <kbd>Alt</kbd>+<kbd>F4</kbd> | Exit application |
| <kbd>Ctrl</kbd>+<kbd>Break</kbd> | Reset |
| <kbd>Ctrl</kbd>+<kbd>F1</kbd> | Save disk 1 |
| <kbd>Ctrl</kbd>+<kbd>F2</kbd> | Save disk 2 |
| <kbd>Ctrl</kbd>+<kbd>F12</kbd> | Exit application |
| <kbd>Ctrl</kbd>+<kbd>Keypad</kbd> <kbd>*</kbd> | Reset |
| <kbd>Ctrl</kbd>+<kbd>Keypad</kbd> <kbd>-</kbd> | Normal emulation speed |
| <kbd>F1</kbd> | Open disk 1 |
| <kbd>F2</kbd> | Open disk 2 |
| <kbd>F3</kbd> | Tape browser |
| <kbd>F4</kbd> | Import data |
| <kbd>F5</kbd> | Toggle TV aspect ratio |
| <kbd>F6</kbd> | Toggle display smoothing |
| <kbd>F8</kbd> | Toggle full-screen |
| <kbd>F9</kbd> | Debugger |
| <kbd>F10</kbd> | Options |
| <kbd>F11</kbd> | NMI Button |
| <kbd>F12</kbd> | Reset button |
| <kbd>Keypad</kbd> <kbd>+</kbd> | Increase emulation speed |
| <kbd>Keypad</kbd> <kbd>*</kbd> | Turbo speed |
| <kbd>Keypad</kbd> <kbd>-</kbd> | Reduce emulation speed |
| <kbd>Pause</kbd> | Pause emulation |
| <kbd>PrintScrn</kbd> | Save SAM screenshot in PNG format |
| <kbd>Shift</kbd>+<kbd>F1</kbd> | Eject disk 1 |
| <kbd>Shift</kbd>+<kbd>F2</kbd> | Eject disk 2 |
| <kbd>Shift</kbd>+<kbd>F4</kbd> | Export data |
| <kbd>Shift</kbd>+<kbd>F9</kbd> | Save SAM screenshot in PNG format |
| <kbd>Win</kbd>+<kbd>Fx</kbd> | Generate SAM function key Fx (F1–F0) |


### Turbo Speed

Activating **Turbo Speed** disables frame synchronization and sound, limiting
the display to **5 frames per second**. This significantly increases emulation
speed, making it useful for quickly navigating slow sections in games, demos,
or long program sequences.

---

### SAM Shift Modifiers & Special Symbols

| **Shortcut** | **Action** |
|---|---|
| <kbd>`</kbd> (backtick) | © |
| <kbd>.</kbd> (on keypad) | © |
| <kbd>Delete</kbd> | Shift+Delete |
| <kbd>End</kbd> | Ctrl+Right |
| <kbd>Home</kbd> | Ctrl+Left |
| <kbd>Insert</kbd> | Inv |
| <kbd>Left-Alt</kbd> (if enabled) | Ctrl |
| <kbd>Left-Ctrl</kbd> | Symbol |
| <kbd>Menu Key</kbd> | Edit |
| <kbd>Numlock</kbd> | Symbol+Edit (toggles SAM BASIC keypad) |
| <kbd>Page Down</kbd> | F1 |
| <kbd>Page Up</kbd> | F4 |
| <kbd>Right-Alt</kbd> (if enabled) | Edit |
| <kbd>Right-Ctrl</kbd> | Ctrl |
| <kbd>§</kbd> (section) | # |



---

## Using Hard Disks - Real or HDF

SimCoupé emulates the **Atom** and **Atom Lite** hard disk interfaces. Atom DOS (BDOS)
is compatible with the original **SAMDOS** and hard disks are presented as an
array of floppy-sized records, ensuring strong compatibility with existing
software.

SimCoupé supports real hard disks and CompactFlash (CF) cards on providing a fast and reliable method for sharing data with a
real SAM Coupé system. For safety reasons, only **USB-connected** disks can be
accessed by SimCoupé.

### Using Existing Hard Disk Image Files (HDF)

If no physical device is available, existing HDF images can be used:

1. Press **F10** to open the SimCoupé Options.
2. In the **Disks** section, click **“…”** next to the **Atom** interface.
3. Browse to and select an existing **HDF** file.
4. Click **OK** twice and boot **BDOS**.

### Creating and Preparing a New HDF Image

To create a new hard disk image:

1. Press **F10** to open the SimCoupé Options.
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

SimCoupé supports **print-to-file** on all platforms, allowing code listings and
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

### Display

| Setting                          | Description                                                                 |
|---------------------------------|-----------------------------------------------------------------------------|
| Bi-linear filtering (smoothing)  | Smooths the display when stretching to fill the SimCoupé window.           |

---

### Drive 1

| Setting | Description                               |
|---------|-------------------------------------------|
| Device  | Select if floppy drive 1 is installed. ROM only boots from drive 1. |
| Media   | Disk image or real device.               |

---

### Drive 2

| Setting | Description                                                                 |
|---------|-----------------------------------------------------------------------------|
| Device  | None, Floppy, Atom Classic, or Atom Lite.                                   |
| Media   | Disk image or real device. Atom/Atom Lite support Master/Slave drives (HDF images or real devices). Requires permissions to access raw devices. |

---

### Helpers

| Setting                                    | Description                                                                                                           |
|--------------------------------------------|-----------------------------------------------------------------------------------------------------------------------|
| Allow booting from non-bootable disks      | Detects unbootable disks, temporarily replaces them with a bootable image and restores the original disk after DOS boot. |
| Auto-load media inserted at startup screen | Automatically loads disks and tapes at the stripey boot screen.                                                      |
| Fast boot after hardware reset              | Speeds up cold-boot, bypassing memory test delay.                                                                    |
| Fast floppy disk access                      | Speeds up loading/saving from disks.                                                                                 |

---

### Input

| Setting                       | Description                                                                                   |
|--------------------------------|-----------------------------------------------------------------------------------------------|
| Enable mouse interface         | Activates mouse support for SAM software. Double-click SimCoupé window for BASIC use; press Esc to release. |
| Keyboard                       | Converts typed letters and symbols to the corresponding SAM key sequence. Modes: Automatic, Spectrum, Disabled. |
| Use Alt-Gr for Edit key         | Maps Right-Alt to SAM Edit key.                                                              |
| Use Left-Alt for Cntrl key      | Maps Left-Alt to SAM Cntrl key. May block normal Windows menu shortcuts.                     |

---

### Joystick

| Setting     | Description                                                                 |
|-------------|-----------------------------------------------------------------------------|
| Player 1/2  | Select devices for SAM joystick 1 (keys 6-0), SAM joystick 2 (keys 1-5), or Kempston joystick (Spectrum). |

---

### Misc

| Setting                                | Description                                                                                  |
|----------------------------------------|----------------------------------------------------------------------------------------------|
| Ask before saving disk image changes    | Prompts for confirmation before saving modifications back to disk images.                    |
| DALLAS clock                            | Advanced clock hardware supported by BDOS.                                                  |
| SAMBUS clock                             | Standard clock hardware interface (used by MasterDOS, BDOS).                                 |
| Show disk drive activity lights          | Displays on-screen LEDs (green = floppy, orange = Atom, blue = Atom Lite).                   |
| Show emulation speed                     | Shows % of normal SAM speed in the top-right corner.                                         |
| Show status messages                     | Displays status text in the bottom-right corner to confirm actions.                          |

---

### Sound

| Setting       | Description                                                                 |
|---------------|-----------------------------------------------------------------------------|
| DAC on port 7C | Select DAC device: Blue Alpha (variable speed), SAMVoc, or Paula (simple DAC output). |
| MIDI Out      | Select a device for MIDI output, hardware or software synth.               |
| SID Interface | Selects type of SID chip: 6581 (classic, gritty sound) or 8580 (cleaner, brighter). |

---

### System

| Setting                                   | Description                                                                                               |
|-------------------------------------------|-----------------------------------------------------------------------------------------------------------|
| Custom 32K ROM image                       | If blank, a built-in v3.0 ROM image is used.                                                             |
| External memory                            | External add-on packs can extend memory in 1MB blocks. Requires software support (e.g., MasterDOS, MasterBASIC, TopGun Demo). |
| Internal RAM                               | Base SAM model has 256kB main memory, extendable to 512kB with an internal add-on. Many software titles require 512kB. |
| Use AL-BOOT ROM if Atom Lite is connected | Applies ROM patches to automatically boot from Drive 2 if configured as Atom Lite. Not available with a custom ROM. |

---

### Parallel

| Setting                        | Description                                                                                                      |
|--------------------------------|------------------------------------------------------------------------------------------------------------------|
| Automatically flush print jobs  | Flush remaining data to output if no data is sent within 2 seconds.                                              |
| Port 1/2                        | Select device for the virtual printer port. Options include Printer, Mono-DAC (8-bit mono), EDdac/SAMdac (8-bit stereo, recommended for SAM MOD Player). |
| Printer device                   | File or device used for output when Printer is selected. "File:" auto-generates a unique file in the Data Files path. |

---

## Debugger

The SimCoupé debugger provides code, text, data and graphical memory views, with features like single-stepping, breakpoints and execution tracing. It starts in disassembly view, highlighting the next instruction, with symbols shown for ROM and custom code (built with `pyz80 --mapfile=`). The register panel displays the current system state.

---

### Register Panel

- **Registers:** Z80 registers, highlighting changes in pink.
- **IM:** Interrupt mode and IFF1 status (DI/EI).
- **Stat:** Five interrupt flags: O=midi-out, F=frame, I=midi-in, M=mouse, L=line.
- **Scan:** Line number (0-311) and line-cycle (0-383) for current raster position.
- **T:** Cycle offset in frame (0-119807), plus cycles since debugger last active.
- **A/B/C/D:** Four 16K memory banks (ROM/RAM/EXT). Cyan text indicates read-only.
- **L/H/V/M:** LMPR/HMPR/VMPR paging registers and current display mode (1-4).
- **Events:** Upcoming events and cycles until due (FINT, FEND, LINT, LEND, MIDI, MEND, MTXF, MOUS, BLUE, TAPE, ASIC).

---

### Global Keys

| Key         | Function                                   |
|------------|--------------------------------------------|
| A           | Enter new view address                     |
| B           | Breakpoint list                            |
| C           | Code trace history                          |
| Ctrl-T      | Toggle debugger transparency               |
| D           | Disassembly view                           |
| Esc         | Exit debugger / return to disassembly view |
| G           | Graphics view                               |
| H           | Change HMPR page                            |
| L           | Change LMPR page                            |
| M           | Change screen mode                           |
| N           | Number view                                 |
| T           | Text view                                   |
| V           | Change VMPR page                            |
| Keypad-0    | Toggle ROM0                                 |
| Keypad-1    | Toggle ROM1                                 |
| Keypad-2    | Toggle RAM write-protection                 |
| Keypad-3    | Toggle external RAM                         |

---

### Disassembly View Keys

| Key             | Function                                                            |
|-----------------|--------------------------------------------------------------------|
| Ctrl-Keypad-8    | Step over with timing (no interrupts, no border contention)        |
| Ctrl-KP4/5/6     | Step 10K/100K/1M instructions                                      |
| Ctrl-Left/Right  | Move PC 1 byte                                                      |
| Ctrl-Up/Down     | Move PC 1 instruction                                               |
| Keypad-4         | Step 10 instructions                                                |
| Keypad-4/5/6     | Step 10/100/1000 instructions                                       |
| Keypad-7         | Single-step 1 instruction                                           |
| Keypad-8         | Step over instruction                                               |
| Keypad-9         | Step out of function                                                |
| Left/Right       | Scroll 1 byte                                                       |
| PgUp/PgDn        | Scroll 1 page                                                       |
| Return           | Enter debugger command mode                                         |
| S                | Toggle symbol display                                               |
| U                | Execute until condition                                             |
| Up/Down          | Scroll 1 instruction                                                |

---

### Text / Number View Keys

| Key       | Function       |
|-----------|----------------|
| Left/Right| Scroll 1 byte  |
| PgUp/PgDn | Scroll 1 page  |
| Up/Down   | Scroll 1 line  |

---

### Graphics View Keys

| Key             | Function                                    |
|-----------------|--------------------------------------------|
| 1/2/3/4         | Select screen mode                          |
| Ctrl-Left/Right  | Adjust column width by 1 byte             |
| Ctrl-Up/Down     | Zoom in/out                                |
| Ctrl-PgUp/PgDn   | Scroll 1 page                               |
| Left/Right       | Scroll 1 byte                               |
| PgUp/PgDn        | Scroll 1 column                             |
| Up/Down          | Scroll 1 line                               |

---

### Trace View Keys

| Key   | Function                          |
|-------|----------------------------------|
| S     | Toggle address symbol display     |
| Space | Toggle single/double register display |

---

### Debugger Command Mode

| Command                   | Function                                               |
|----------------------------|-------------------------------------------------------|
| [x] until COND             | Execute until condition is true                       |
| bpc N                      | Clear breakpoint N (* = all)                          |
| bc N                       | Clear breakpoint N (* = all)                          |
| bd N                       | Disable breakpoint N                                  |
| be N                       | Enable breakpoint N                                   |
| bpio P [rw|r|w]            | I/O breakpoint on port P                              |
| bpm ADDR [r|w|rw]          | Memory breakpoint with access specifier              |
| bpmr A B [r|w|rw]          | Memory range breakpoint from address A for length B  |
| bpint I                    | Breakpoint on interrupt (frame/line/midi)            |
| bpx ADDR                   | Execute breakpoint at ADDR (optional condition)      |
| break                      | Set paging + interrupts to return to BASIC           |
| call ADDR                  | Simulate call to address ADDR                         |
| di / ei                    | Disable / enable interrupts                           |
| ex de,hl                   | Exchange DE with HL                                   |
| exx                        | Exchange BC/DE/HL with BC'/DE'/HL'                   |
| flag +|- sz5h3vnc          | Set/reset flag bits                                   |
| im M                       | Set interrupt mode M (0-2)                            |
| ld R,N                     | Load register R with value N                           |
| nmi                        | Generate non-maskable interrupt                       |
| out P,N                    | Write value N to port P                                |
| poke A,N1[,N2,...]         | Poke address A with one or more values               |
| pop [reg]                  | Pop 16-bit value, optionally to register             |
| push W                     | Push 16-bit value W onto stack                        |
| r R=N                      | Load register R with value N                           |
| reset                      | Reset emulation                                       |
| x N                        | Execute N instructions                                 |
| zap                        | Replace current instruction with NOP                  |


**Notes:**

- Breakpoints resolve to physical memory; can also use `page:offset` (e.g., `bpx 1:0`).
- Optional `if COND` allows conditional breakpoints.
- Single-stepping HALT enters interrupt handler; step-over executes handler fully.
- Returning to current execution: enter `pc` in new address (`A`) or step normally.
- Conditional expressions highlight current instruction if active.

### Numeric Expressions

**Expression Examples (UNTIL breakpoints)**

| Expression                       | Description                                      |
|---------------------------------|--------------------------------------------------|
| (a == b) && (b == IXl)           | Break when A, B, IXl are equal                  |
| dpeek sp == 1234                  | Break when hex 1234 is top of stack             |
| hl != =hl                         | Break when HL changes                            |
| outval == 0n123                   | Break when 123 is written to any port           |
| peek pc == 0x76                   | Break at next HALT                               |
| sline == 0                         | Break when raster is drawing line 0             |
| vmode == 3                        | Break when screen mode 3 is selected            |

---

**Functions**

| Command   | Description                                |
|-----------|--------------------------------------------|
| DPEEK     | 16-bit lookup in currently paged RAM       |
| PEEK      | 8-bit lookup in currently paged RAM        |

---

**Number Bases**

| Type       | Format Examples                               | Comments                      |
|------------|-----------------------------------------------|-------------------------------|
| Binary     | %10101100                                     |                               |
| Character  | "a" or 'a'                                    |                               |
| Decimal    | 0n12345                                       |                               |
| Hex        | 0x1234 / 1234h / $1234 / &1234 / #1234      |                               |
| Octal      | Not supported                                 | Leading zeroes ignored        |

---

**Operators**

| Category           | Operators                   |
|-------------------|----------------------------|
| Binary arithmetic  | + - * / \ %                |
| Bitwise arithmetic | & | ^ band bor bxor        |
| Bitwise shift      | << >>                      |
| Comparison         | == != <> < > <= >=         |
| Logical            | && || and or               |
| Unary              | + - ~ ! * =                |

---

**Symbols**

| Category         | Items                                                      |
|-----------------|------------------------------------------------------------|
| Display          | dline sline                                                |
| Double registers | af bc de hl af' bc' de' hl' ix iy sp pc                  |
| Execution        | inrom call autoexec                                        |
| I/O              | inval outval                                               |
| Interrupts       | ei di iff1 iff2 im                                        |
| Paging           | lpage hpage vpage vmode lepage hepage rom0 rom1 wprot    |
| Registers        | lepr hepr lpen hpen status lmpr hmpr vmpr midi border addr |
| Single registers | a f b c d e h l i r ixh ixl iyh iyl                       |

---
