# RetroArch - Display, Filters, Shaders & Overlays Guide

<img src="../../../wiki_images/logos/retroarch-logo.png" width="75" alt="Retroarch logo">

## Display Concepts
 
This section explains the difference between **PPI**, **size**, **resolution**, and **aspect ratio**, which are often confused but describe different properties of a display.

---

### Pixel Density (PPI)

Pixel density describes how tightly pixels are packed into a screen.

- Higher PPI = sharper image
- Depends on both resolution AND display size

---

### Display Size

Display dimensions measured diagonally in inches. Relevant primarily when calculating **pixel density** (PPI).

---

### Resolution

Total pixel count expressed as horizontal x vertical (e.g., 640x480) on the display. Higher resolution yields sharper imagery through increased PPI.

| Resolution | Common Name | Typical Use |
|------------|-------------|-------------|
| 160x144 | GB | Game Boy, Game Gear |
| 240x160 | GBA | Game Boy Advance |
| 256x192 | DS | Nintendo DS |
| 320x200 | QVGA+ | DOS games, early PC gaming |
| 320x240 | QVGA | PS1, Saturn, arcade games |
| 400x240 | 3DS | Nintendo 3DS top screen |
| 480x272 | WQVGA | PSP |
| 640x480 | 480p / VGA | Dreamcast, GameCube, PS2, Wii |
| 720x480 | EDTV | DVD video, enhanced-definition consoles |
| 800x600 | SVGA | Late DOS / early Windows gaming |
| 960x544 | qHD+ | PlayStation Vita |
| 1024x768 | XGA | Early LCD monitors |
| 1280x720 | 720p HD | Xbox 360, PS3, HDTV standard |
| 1280x800 | WXGA | Steam Deck, laptops, handheld PCs |
| 1366x768 | HD Ready | Budget LCD displays |
| 1440x900 | WXGA+ | Widescreen desktop monitors |
| 1600x900 | HD+ | Mid-range monitors |
| 1680x1050 | WSXGA+ | Professional LCDs |
| 1920x1080 | 1080p Full HD | Modern displays, consoles, streaming |
| 1920x1200 | WUXGA | Productivity monitors |
| 2560x1440 | 1440p QHD | Gaming monitors |
| 2560x1600 | WQXGA | High-end productivity displays |
| 3440x1440 | UWQHD | Ultrawide gaming monitors |
| 3840x2160 | 4K UHD | Modern TVs and monitors |
| 5120x1440 | DQHD | Super-ultrawide displays |
| 5120x2160 | 5K Ultrawide | Professional creative work |
| 5120x2880 | 5K | High-end desktop displays |
| 7680x4320 | 8K UHD | Next-generation displays |

---

### Aspect Ratio

Proportional relationship between width and height, derived by simplifying the horizontal/vertical pixel ratio.

Here are some examples:

| Manufacturer | System | Type | Width (px) | Height (px) | Aspect Ratio |
|-------------|--------|------|-----------:|------------:|-------------|
| Atari | Atari 2600 | Home | 160 | 192 | 0.83 (5:6) |
| Atari | Atari 5200 | Home | 320 | 192 | 1.67 (5:3) |
| Atari | Atari 7800 | Home | 320 | 240 | 1.33 (4:3) |
| Atari | Jaguar | Home | 320 | 240 | 1.33 (4:3) |
| Atari | Jaguar CD | Home | 320 | 240 | 1.33 (4:3) |
| Atari | Lynx | Handheld | 160 | 102 | 1.57 (80:51) |
| Bandai | Playdia | Home | 320 | 240 | 1.33 (4:3) |
| Bandai | WonderSwan | Handheld | 224 | 144 | 1.56 (14:9) |
| Bandai | WonderSwan Color | Handheld | 224 | 144 | 1.56 (14:9) |
| Bandai | SwanCrystal | Handheld | 224 | 144 | 1.56 (14:9) |
| Casio | Loopy | Home | 256 | 224 | 1.14 (8:7) |
| Casio | PV-1000 | Home | 256 | 192 | 1.33 (4:3) |
| Coleco | ColecoVision | Home | 256 | 192 | 1.33 (4:3) |
| Emerson | Arcadia 2001 | Home | 128 | 208 | 0.62 (8:13) |
| Epoch | Super Cassette Vision | Home | 256 | 222 | 1.15 |
| Epoch | Game Pocket Computer | Handheld | 75 | 64 | 1.17 |
| Fairchild | Channel F | Home | 128 | 64 | 2.00 (2:1) |
| GCE | Vectrex | Home | 240 | 320 | 0.75 (3:4) |
| Magnavox | Odyssey² / Videopac | Home | 160 | 200 | 0.80 (4:5) |
| Mattel | Intellivision | Home | 160 | 192 | 0.83 (5:6) |
| Mattel | HyperScan | Home | 640 | 480 | 1.33 (4:3) |
| Microsoft | Xbox | Home | 640 | 480 | 1.33 (4:3) |
| Microsoft | Xbox 360 | Home | 1280 | 720 | 1.78 (16:9) |
| NEC | PC Engine / TurboGrafx-16 | Home | 256 | 239 | 1.07 |
| NEC | CoreGrafx | Home | 256 | 239 | 1.07 |
| NEC | SuperGrafx | Home | 256 | 239 | 1.07 |
| NEC | PC Engine CD-ROM² | Home | 256 | 239 | 1.07 |
| NEC | PC-FX | Home | 320 | 240 | 1.33 (4:3) |
| NEC | TurboExpress | Handheld | 400 | 270 | 1.48 |
| Nintendo | Color TV-Game | Home | 192 | 192 | 1.00 (1:1) |
| Nintendo | Game & Watch | Handheld | Varies | Varies | Varies |
| Nintendo | Famicom / NES | Home | 256 | 240 | 1.07 (16:15) |
| Nintendo | Famicom Disk System | Home | 256 | 240 | 1.07 (16:15) |
| Nintendo | SNES / Super Famicom | Home | 256 | 224 | 1.14 (8:7) |
| Nintendo | Satellaview | Home | 256 | 224 | 1.14 (8:7) |
| Nintendo | Virtual Boy | Handheld | 384 | 224 | 1.71 (12:7) |
| Nintendo | Nintendo 64 | Home | 640 | 480 | 1.33 (4:3) |
| Nintendo | GameCube | Home | 640 | 480 | 1.33 (4:3) |
| Nintendo | Wii | Home | 640 | 480 | 1.33 (4:3) |
| Nintendo | Wii U | Home | 1920 | 1080 | 1.78 (16:9) |
| Nintendo | Pokémon Mini | Handheld | 96 | 64 | 1.50 (3:2) |
| Nintendo | Game Boy | Handheld | 160 | 144 | 1.11 (10:9) |
| Nintendo | Game Boy Color | Handheld | 160 | 144 | 1.11 (10:9) |
| Nintendo | Game Boy Advance | Handheld | 240 | 160 | 1.50 (3:2) |
| Nintendo | Nintendo DS | Handheld | 256 | 192 | 1.33 (4:3) |
| Nintendo | Nintendo 3DS | Handheld | 400 | 240 | 1.67 (5:3) |
| Nokia | N-Gage | Handheld | 176 | 208 | 0.85 (11:13) |
| Panasonic | 3DO Interactive Multiplayer | Home | 320 | 240 | 1.33 (4:3) |
| Sega | SG-1000 | Home | 256 | 192 | 1.33 (4:3) |
| Sega | SC-3000 | Home | 256 | 192 | 1.33 (4:3) |
| Sega | Master System | Home | 256 | 192 | 1.33 (4:3) |
| Sega | Genesis / Mega Drive | Home | 320 | 224 | 1.43 (10:7) |
| Sega | Sega CD / Mega-CD | Home | 320 | 224 | 1.43 (10:7) |
| Sega | 32X | Home | 320 | 240 | 1.33 (4:3) |
| Sega | Nomad | Handheld | 320 | 224 | 1.43 (10:7) |
| Sega | Saturn | Home | 320 | 224 | 1.43 (10:7) |
| Sega | Dreamcast | Home | 640 | 480 | 1.33 (4:3) |
| Sega | Game Gear | Handheld | 160 | 144 | 1.11 (10:9) |
| Sega | Pico | Home | 320 | 224 | 1.43 (10:7) |
| SNK | Neo Geo AES | Home | 320 | 224 | 1.43 (10:7) |
| SNK | Neo Geo CD | Home | 320 | 224 | 1.43 (10:7) |
| SNK | Neo Geo Pocket | Handheld | 160 | 152 | 1.05 (20:19) |
| SNK | Neo Geo Pocket Color | Handheld | 160 | 152 | 1.05 (20:19) |
| Sony | PocketStation | Handheld | 32 | 32 | 1.00 (1:1) |
| Sony | PlayStation | Home | 320 | 240 | 1.33 (4:3) |
| Sony | PlayStation 2 | Home | 640 | 480 | 1.33 (4:3) |
| Sony | PSP | Handheld | 480 | 272 | 1.76 (30:17) |
| Sony | PlayStation Vita | Handheld | 960 | 544 | 1.76 (30:17) |
| Sony | PlayStation 3 | Home | 1920 | 1080 | 1.78 (16:9) |
| Tiger | Game.com | Handheld | 200 | 160 | 1.25 (5:4) |
| Tiger | R-Zone | Handheld | 160 | 120 | 1.33 (4:3) |
| Watara | Supervision | Handheld | 160 | 160 | 1.00 (1:1) |

---

## Scaling

Scaling refers to enlarging a game image beyond its native resolution to fit the display surface while preserving the original aspect ratio.

---

### Integer Scaling

Scales pixels by whole number multipliers only. Preserves perfect pixel balance but may not fill the screen.

**Path**: `RetroArch Settings → Video → Scaling → Integer Scaling`

**Example: GBA on Steam Deck (1280x800)**

- Original: 240x160 (3:2)
- 4x Scale: 960x640 (fits within 1280x800)
- 5x Scale: 1200x800 (fits perfectly)
- 6x Scale: 1440x960 (exceeds display bounds)

In this case, the Steam Deck can display a **perfect 5x integer-scaled GBA image** with no unused vertical space.

**Integer Scaling Table**

| Resolution | Aspect | Consoles / Systems | Steam Deck (1280x800) | HD (1920x1080) | 4K (3840x2160) | 8K (7680x4320) |
|------------|---------|--------------------|-----------------------|----------------|----------------|----------------|
| 32x32 | 1:1 | PocketStation | 25x | 33x | 67x | 135x |
| 75x64 | 1.17 | Game Pocket Computer | 12x | 16x | 33x | 67x |
| 96x64 | 3:2 | Pokémon Mini | 12x | 16x | 33x | 67x |
| 128x64 | 2:1 | Channel F | 10x | 15x | 30x | 60x |
| 128x208 | 8:13 | Arcadia 2001 | 3x | 5x | 10x | 20x |
| 160x102 | 80:51 | Atari Lynx | 7x | 10x | 21x | 42x |
| 160x120 | 4:3 | Tiger R-Zone | 6x | 9x | 18x | 36x |
| 160x144 | 10:9 | Game Boy, Game Boy Color, Game Gear | 5x | 7x | 15x | 30x |
| 160x152 | 20:19 | Neo Geo Pocket, Neo Geo Pocket Color | 5x | 7x | 14x | 28x |
| 160x160 | 1:1 | Watara Supervision | 5x | 6x | 13x | 27x |
| 160x192 | 5:6 | Atari 2600, Intellivision | 4x | 5x | 11x | 22x |
| 160x200 | 4:5 | Odyssey² / Videopac | 4x | 5x | 10x | 21x |
| 176x208 | 11:13 | Nokia N-Gage | 3x | 5x | 10x | 20x |
| 192x192 | 1:1 | Nintendo Color TV-Game | 4x | 5x | 11x | 22x |
| 200x160 | 5:4 | Tiger Game.com | 5x | 6x | 13x | 27x |
| 224x144 | 14:9 | WonderSwan, WonderSwan Color, SwanCrystal | 5x | 7x | 15x | 30x |
| 240x160 | 3:2 | Game Boy Advance | 5x | 6x | 13x | 27x |
| 240x320 | 3:4 | Vectrex | 2x | 3x | 6x | 13x |
| 256x192 | 4:3 | PV-1000, ColecoVision, SG-1000, SC-3000, Master System, Nintendo DS | 4x | 5x | 11x | 22x |
| 256x222 | 1.15 | Super Cassette Vision | 3x | 4x | 9x | 18x |
| 256x224 | 8:7 | Casio Loopy, SNES, Super Famicom, Satellaview | 3x | 4x | 9x | 18x |
| 256x239 | 1.07 | PC Engine, TurboGrafx-16, CoreGrafx, SuperGrafx, PC Engine CD-ROM² | 3x | 4x | 9x | 18x |
| 256x240 | 16:15 | NES, Famicom, Famicom Disk System | 3x | 4x | 9x | 18x |
| 320x192 | 5:3 | Atari 5200 | 4x | 5x | 11x | 22x |
| 320x224 | 10:7 | Genesis, Mega Drive, Sega CD, Saturn, Nomad, Pico, Neo Geo AES, Neo Geo CD | 3x | 4x | 9x | 18x |
| 320x240 | 4:3 | Atari 7800, Jaguar, Jaguar CD, Playdia, PC-FX, 3DO, PlayStation | 3x | 4x | 9x | 18x |
| 384x224 | 12:7 | Virtual Boy | 3x | 4x | 9x | 18x |
| 400x240 | 5:3 | Nintendo 3DS (top screen) | 3x | 4x | 9x | 18x |
| 400x270 | 1.48 | TurboExpress | 2x | 4x | 8x | 16x |
| 480x272 | 30:17 | PSP | 2x | 3x | 7x | 15x |
| 640x480 | 4:3 | HyperScan, Xbox, Nintendo 64, GameCube, Wii, Dreamcast, PlayStation 2 | 1x | 2x | 4x | 9x |
| 960x544 | 30:17 | PlayStation Vita | 1x | 1x | 3x | 7x |
| 1280x720 | 16:9 | Xbox 360, PlayStation 3, Wii U | 1x | 1x | 3x | 6x |

---

### Non-Integer Scaling

Fills the screen completely using fractional multipliers. May cause pixel distortion or uneven pixel sizes.

**Example: GBA on Steam Deck (Fullscreen)**

- Original: 240x160
- Display: 1280x800
- Horizontal Scale: 1280 ÷ 240 = 5.333x
- Vertical Scale: 800 ÷ 160 = 5x

To fill the entire width, RetroArch must use a non-integer horizontal scale, which can introduce uneven pixel widths.

---

## Filters vs Shaders

Filters are simpler and usually CPU-based. Shaders are GPU-based and far more powerful, but generally cannot be combined with filters.

- **Filters:** lightweight, simple effects and CPU-based.
- **Shaders:** advanced visual control (CRT, scaling, smoothing, etc.) and GPU-based.

---

## Shaders

Shaders are GPU-based post-processing effects applied to the final image. Compared to CPU-based filters, they typically offer higher visual flexibility with lower performance impact on modern hardware, as they leverage unused GPU resources.

RetroArch supports two main shader formats: **GLSL** and **SLANG**.

---

### Shader Categories

**Interpolation Shaders**  

Improve scaling quality while preserving pixel structure. Used for clean, sharp pixel scaling without CPU filters.

**Handheld Shaders**  

Simulate LCD characteristics or add pixel grid effects. Emulates Game Boy, GBA, DS, and similar screens.

**CRT Shaders**  

Simulate analog CRT displays (scanlines, bloom, curvature). Used for authentic retro TV and arcade visuals.

**Signal / Composite Shaders**  

Simulate analog video transmission artifacts like NTSC/PAL, color bleed, and RF noise.

**Mask / Subpixel Shaders**  

Replicate physical pixel layouts (RGB stripes, shadow masks, aperture grille) to improve perceived sharpness and realism.

**Post-Processing Shaders**  

General image enhancement such as sharpening, color correction, bloom, and LUT-based grading.

**Dithering / Reconstruction Shaders**  

Improve or reconstruct dithering patterns and reduce banding in retro graphics.

**Stylization Shaders**  

Artistic effects such as VHS distortion, sketch filters, or glitch-style rendering.

**Utility / Debug Shaders**  

Technical tools used for framebuffer inspection, texture viewing, and rendering diagnostics.

---

### Shader Formats

**GLSL**

Set video driver: `Settings → Video → Output → OpenGL`

  - OpenGL-based
  - Common on lightweight Linux handhelds
  - Broad compatibility, lower feature set

**SLANG**

Set video driver: `Settings → Video → Output → Vulkan`

  - Modern Vulkan/DirectX/OpenGL backend support
  - Preferred on Android, Windows, and handheld PCs
  - More advanced and actively developed

---

### Shaders: Usage 

**Shaders are applied via:**

`Quick Menu → Shaders → Load Preset`

**Adjust via:**

`Shader Parameters`

**Save options:**

- **Game Preset**: single game
- **Core Preset**: emulator core
- **Directory Preset**: system folder

---

## Filters

Filters are post-processing effects applied to the final image in RetroArch. Most are lightweight, but some can be CPU-intensive and impact performance depending on the system.


### Bilinear Filtering

Enable via: `Settings → Video → Scaling → Bilinear Filtering`

Smooths pixel edges by blending them together. Useful for non-integer scaling, but can make pixel art look slightly blurry.

- No filter: sharp pixels
- Bilinear: smoother, softer image

**CRT / Retro Filters (Blargg)**

Includes NTSC, S-Video, and composite simulation filters.

- Adds scanlines, color bleed, and analog softness
- Mimics CRT display output
- More performance-heavy than bilinear filters

---

### Filters: Usage 

**Filters are applied via:**

`Settings → Video → Video Filter`

**Save options:**

`Quick Menu → Overrides`

- **Game Override**: single game
- **Core Override**: emulator core
- **Content Directory Override**: system folder

---

## Overlays

Overlays are image layers applied on top of the game screen. Unlike shaders or filters, they do not modify the game image itself-instead, they act as **visual frames, bezels, or textures** that sit over or around the gameplay area.

They are commonly used to:

- Fill black bars on widescreen displays
- Add console-specific bezels
- Simulate printed artwork or handheld shells
- Overlay scanlines or grid effects

---

### Types of Overlays

**Bezels**  
Decorative frames that fill unused screen space, often matching the original hardware or arcade cabinet.

**Screen Frames / Artwork Overlays**  
Recreate the look of the original device (Game Boy shell, arcade monitor borders, etc.).

**Scanline / Grid Overlays**  
Semi-transparent layers that simulate display artifacts, sometimes combined with shaders.

**Touch Control Overlays (Mobile)**  
On-screen virtual controls used on Android/iOS devices by default.

---


### Overlays: Usage 

**Overlays are applied via:**

`Quick Menu → On-Screen Overlay → Display Overlay → ON`

**Adjust via:**

`Overlay Preset`

**Save options:**

`Quick Menu → Overrides`

- **Game Override**: single game
- **Core Override**: emulator core
- **Content Directory Override**: system folder

---