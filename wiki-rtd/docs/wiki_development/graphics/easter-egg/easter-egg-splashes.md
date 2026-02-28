# Easter Egg Boot Splash Function

<img src="../../../../wiki_images/logos/rd-esde-logo.svg" width="300">

## Main splash location

The main retrodeck boot logo called splash in ES-DE is located in:

[res/splash.svg](https://github.com/RetroDECK/RetroDECK/blob/main/res/splash.svg)

This is used at all times unless it is being overridden by the Easter Egg function.


---

## Easter Egg Logic

When an event is active, the system replaces the default splash from either source and overides the desitination splash.

### Source /retrodeck/graphics/

`**User**

`~/.local/share/flatpak/app/net.retrodeck.retrodeck/current/active/files/retrodeck/graphics/splash.svg`

`~/.local/share/flatpak/app/net.retrodeck.retrodeck/current/active/files/retrodeck/graphics/extra_splashes/<Easter Egg splash>.svg`

**System**

`/var/lib/flatpak/app/net.retrodeck.retrodeck/current/active/files/retrodeck/graphics/splash.svg`

`/var/lib/flatpak/app/net.retrodeck.retrodeck/current/active/files/retrodeck/graphics/extra_splashes/<Easter Egg splash>.svg`


### Destination

The selected splash is copied to:

`~/.var/app/net.retrodeck.retrodeck/config/ES-DE/resources/graphics/splash.svg`

The file replaces the **currently active splash.svg file** in this directory.

This override remains active only during the configured date and time window.

---

## splash_screens - features.json

The function is part of the [config/retrodeck/reference_lists/features.json](https://github.com/RetroDECK/RetroDECK/blob/cooker/config/retrodeck/reference_lists/features.json) json.

The `splash_screens"`  looks in the reference .svg files under: [res/extra_splashes/](https://github.com/RetroDECK/RetroDECK/blob/main/res/extra_splashes/) and overrides the bootlogo with one of the .svg files from the referense list.

```
"splash_screens": {
    "new_year": {
      "start_date": "MMDD",
      "end_date": "MMDD",
      "start_time": "MMDD",
      "end_time": "MMDD",
      "holiday_type": "stable",
      "filename": "placeholder.svg"
      }
    }
```


**Example:**

```
 "splash_screens": {
    "new_year": {
      "start_date": "1231",
      "end_date": "0101",
      "start_time": "0000",
      "end_time": "2359",
      "holiday_type": "stable",
      "filename": "placeholder.svg"
    },
    "up_helly_aa": {
      "start_date": "0127",
      "end_date": "0127",
      "start_time": "0000",
      "end_time": "2359",
      "holiday_type": "dynamic",
      "filename": "rd-up-helly-aa-splash.svg"
    }
  }
```

Here we show both the New Year and Up Helly Aa

---

## Field Reference

### `start_date`

- **Format:** `MMDD`  
- **Description:** Calendar start date (Month + Day) when the splash screen becomes eligible for display.

---

### `end_date`

- **Format:** `MMDD`  
- **Description:** Calendar end date (Month + Day) when the splash screen expires.  

Supports cross-year ranges (e.g., `1231` → `0101`).

---

### `start_time`

- **Format:** `HHMM` (24-hour clock)  
- **Description:** Daily activation time.

**Examples:**

- `0000` → Midnight  
- `0900` → 9:00 AM  
- `2359` → 11:59 PM  

---

### `end_time`

- **Format:** `HHMM` (24-hour clock)  
- **Description:** Daily deactivation time.

---

### `holiday_type`

- **Allowed Values:** `stable`, `dynamic`  

| Value    | Meaning |
|----------|----------|
| `stable` | Occurs on the same calendar date every year. |
| `dynamic` | Date may change year-to-year. |

---

### Overlapping Holiday Handling

If a `stable` (or multi-day `dynamic`) holiday spans across another holiday’s date range, it is recommended to split and re-declare the remaining span after the conflicting holiday rather than relying on overlap resolution.

This avoids priority ambiguity and ensures deterministic rendering behavior. Single-day holidays should always take precedence over multi-day spans (whether `stable` or `dynamic`).

**Example (span split to avoid overlap):**

```
"chinese_new_year": {
  "start_date": "0207",
  "end_date": "0208",
  "start_time": "0000",
  "end_time": "2359",
  "holiday_type": "dynamic",
  "filename": "rd-lunar-goat-splash.svg"
},
"carnival": {
  "start_date": "0209",
  "end_date": "0209",
  "start_time": "0001",
  "end_time": "2359",
  "holiday_type": "dynamic",
  "filename": "rd-carnival-splash.svg"
},
"chinese_new_year_2": {
  "start_date": "0210",
  "end_date": "0210",
  "start_time": "0000",
  "end_time": "2359",
  "holiday_type": "dynamic",
  "filename": "rd-lunar-goat-splash.svg"
}
```


---

### `filename`

- **Description:** File name of the splash screen asset  `rd-<splashname>.svg` from `/res/extra_splashes/`.  


---

## Boot Logo Credits

The boot logo (also called the boot splash).

**Note:**

Splashes created by members of the RetroDECK team can be considered as a temporary solution until we can find *better* artists who wish to contribute.

### Special Thanks to FOSS Art

All assets are largely created using free‑and‑open‑source resources from the following repositories (or by hand):

- **Pixelbay**
- **SVGRepo**
- **OpenClipart**
- **KenneyNL** 
- **Creazilla** 

We extend our gratitude to all contributors who make these open‑art assets available and free to use for all.

### Standard Logo

<img src="../../../../wiki_images/logos/rd-logo-box.png" width="500">

**Artists that contributed:**

The following contributors played important roles in the development of the first and second iterations of the RetroDECK logo, including work on color schemes, iconography, SteamGridDB assets, and overall conceptual design:

- [Pixelguin](https://github.com/Pixelguin)
- [RetroDECK Team: XargonWan](https://github.com/XargonWan)
- [antfortytwo](https://github.com/anthonycaccese/)
- [MorGuux](https://github.com/MorGuux)
- [Weestuarty](https://github.com/Weestuarty)
- Víctor R

---

## Q1

### Up Helly Ah

<details><summary> Spoiler </summary>
<img src="../rd-up-helly-aa-splash.svg" width="500">

Artists - RetroDECK Team: Lazorne

</details>

---

### Groundhog Day

<details><summary> Spoiler </summary>
<img src="../rd-groundhog-day-splash.svg" width="500">

Artists - RetroDECK Team: Lazorne

</details>


---

### Setsubun - 節分

<details><summary> Spoiler </summary>
<img src="../rd-setsubun-splash.svg" width="500">

Artists - RetroDECK Team: XargonWan

</details>

---

### Chinese / Lunar New Year - 春节 - Dragon - 龙

<details><summary> Spoiler </summary>

<img src="../rd-lunar-dragon-splash.svg" width="500">

Artists: Weestuarty

</details>

---

### Chinese / Lunar New Year - 春节 - Snake - 蛇

<details><summary> Spoiler </summary>

<img src="../rd-lunar-snake-splash.svg" width="500">

Artists - RetroDECK Team: XargonWan

</details>

---

### Chinese / Lunar New Year - 春节 - Horse - 马

<details><summary> Spoiler </summary>

<img src="../rd-lunar-horse-splash.svg" width="500">

Artists - RetroDECK Team: XargonWan

</details>

---

### Valentines Day

<details><summary> Spoiler </summary>
<img src="../rd-valentines-splash.svg" width="500">

Artists- RetroDECK Team: Weestuarty

</details>

---

### Holi

<details><summary> Spoiler </summary>
<img src="../rd-holi-splash.svg" width="500">

Artists: Lazorne

</details>

---

### RetroDECK's Birthday & International Game Masters's Day

<details><summary> Spoiler </summary>
<img src="../rd-gm-bday-splash.svg" width="500">

Artists: Weestuarty

</details>

---

### International Women's Day

<details><summary> Spoiler </summary>
<img src="../rd-womans-day-splash.svg" width="500">

Artists - RetroDECK Team: Lazorne

</details>

---


### St Patrick's Day

<details><summary> Spoiler </summary>
<img src="../rd-stpatricks-splash.svg" width="500">

Artists: Weestuarty

</details>

---

### Eid al-Fitr

<details><summary> Spoiler </summary>
<img src="../rd-eid-al-fitr-splash.svg" width="500">

Artists - RetroDECK Team: Lazorne

</details>


---

## Q2

### Walpurgis Night

<details><summary> Spoiler </summary>
<img src="../rd-walpurgis-splash.svg" width="500">

Artists - RetroDECK Team: Lazorne

</details>

---

### May day / International Workers Day / Labour Day

<details><summary> Spoiler </summary>
<img src="../rd-mayday-splash.svg" width="500">

Artists - RetroDECK Team: Lazorne

</details>

---


### Kodomo no Hi - こどもの日

<details><summary> Spoiler </summary>
<img src="../rd-kodomo-golden-splash.svg" width="500">

Artists - RetroDECK Team: XargonWan

</details>

---

### Cooper's Hill Cheese-Rolling and Wake

<details><summary> Spoiler </summary>
<img src="../rd-cheese-wake-splash.svg" width="500">

Artists - RetroDECK Team: Lazorne

</details>


---

### Midsommarafton

<details><summary> Spoiler </summary>
<img src="../rd-midsummer-splash.svg" width="500">

Artists - RetroDECK Team: Lazorne

</details>


---

### Dragon Boat Festival - 端午节

<details><summary> Spoiler </summary>
<img src="../rd-dragon-boat-festival-splash.svg" width="500">

Artists - RetroDECK Team: Lazorne

</details>

---

## Q3

### Running of the Bulls - El Encierro

<details><summary> Spoiler </summary>
<img src="../rd-running-bulls-splash.svg" width="500">

Artists - RetroDECK Team: Lazorne

</details>

---

### Tanabata - たなばた

<details><summary> Spoiler </summary>
<img src="../rd-tanabata-splash.svg" width="500">

Artists - RetroDECK Team: XargonWan

</details>

---

### La Tomatina

<details><summary> Spoiler </summary>
<img src="../rd-la-tomatina-splash.svg" width="500">

Artists - RetroDECK Team: Lazorne

</details>

---

### International Talk Like a Pirate Day

<details><summary> Spoiler </summary>
<img src="../rd-pirate-splash.svg" width="500">

Artists - RetroDECK Team: Lazorne

</details>


---

### Oktoberfest

<details><summary> Spoiler </summary>
<img src="../rd-oktoberfest-splash.svg" width="500">

Artists - RetroDECK Team: Lazorne

</details>

---


## Q4

### Halloween

<details><summary> Spoiler </summary>
<img src="../rd-halloween-splash.svg" width="500">

Artists - RetroDECK Team: Lazorne

</details>

---

### Dia de los Muertos

<details><summary> Spoiler </summary>
<img src="../rd-dia-de-los-muertos-splash.svg" width="500">

Artists - RetroDECK Team: Lazorne

</details>

---


### Diwali - Festival of Lights

<details><summary> Spoiler </summary>
<img src="../rd-diwali-splash.svg" width="500">

Artists - RetroDECK Team: Lazorne

</details>

---


### International Men's Day

<details><summary> Spoiler </summary>
<img src="../rd-mens-day-splash.svg" width="500">

Artists - RetroDECK Team: Lazorne

</details>

---

### Monkey Buffet Festival

<details><summary> Spoiler </summary>
<img src="../rd-monkey-festival-splash.svg" width="500">

Artists - RetroDECK Team: Lazorne

</details>

---


### Lucia

<details><summary> Spoiler </summary>
<img src="../rd-lucia-splash.svg" width="500">

Artists - RetroDECK Team: Lazorne

</details>

---


### Xmas - Holiday Period

<details><summary> Spoiler </summary>
<img src="../rd-xmas-splash.svg" width="500">

Artists:  Weestuarty

</details>


---


### New Year

<details><summary> Spoiler </summary>
<img src="../rd-new-year-splash.svg" width="500">

Artists - RetroDECK Team: Lazorne

</details>

---

## Other

### Pride

<details><summary> Spoiler </summary>
<img src="../rd-pride-splash.svg" width="500">

Artists: Weestuarty

</details>

---

## Looking for Artist

| Event | Date (Typical) | Region / Country | Description | Key Symbols | Color Palette | Patterns & Motifs | Mood | Logo Available | Comments |
|---|---|---|---|---|---|---|---|---|---|
| Desert Kite Festival | Jan-Mar (varies) | UAE | Large outdoor kite-flying event | Kites, wind, sky | Bright multicolor, blue | Geometric kite shapes | Joyful, airy | No |  |
| Camel Festival | Jan-Mar (varies) | Saudi Arabia | Cultural festival with camel shows and races | Camels, desert motifs | Sand, brown, gold | Tribal patterns | Traditional, proud | No |  |
| Inti Raymi | Feb | Peru | Historic Incan festival celebrating the sun | Sun discs, traditional dress | Gold, red | Incan geometry | Ceremonial, proud | No |  |
| International Polar Bear Day | Feb 27 | Arctic | Awareness day for polar bear conservation | Polar bears, ice | White, icy blue | Ice textures | Reflective, educational | No |  |
| Hanami (花見) | Late Mar-Early Apr | Japan | Cherry blossom viewing | Sakura petals, picnics | Soft pink, white | Falling petals | Calm, serene | No |  |
| April Fools’ Day | Apr 1 | International | Day of jokes and pranks | Jester hats, props | Bright primaries | Comic shapes | Silly, playful | No |  |
| Earth Day | Apr 22 | International | Environmental awareness and action | Earth, leaves | Green, blue | Organic shapes | Hopeful, mindful | No |  |
| International Penguin Awareness Day | Apr 25 | Antarctica | Penguin conservation awareness | Penguins, ice | Black, white, blue | Ice patterns | Educational | No |  |
| Syttende Mai | May 17 | Norway | National day with parades | Flags, bunads | Red, white, blue | Clean lines | Proud, joyful | No |  |
| Mother’s Day | May (2nd Sunday) | International | Honoring mothers and caregivers | Flowers, cards | Soft pastels | Floral motifs | Warm, thankful | No |  |
| Towel Day | May 25 | International | Tribute to Douglas Adams and *The Hitchhiker’s Guide to the Galaxy* | Towels, number 42 | Black, neon green, deep blues | Stars, sci-fi UI | Geeky, humorous | No | “Don’t Panic” |
| White Night Festivals | Jun (varies) | Northern Europe | Cultural events during long daylight | Sun, cityscapes | Light blue, gold | Gradients | Dreamy | No |  |
| Father’s Day | Jun (3rd Sunday) | International | Honoring fathers and caregivers | Tools, ties | Blue, gray | Simple icons | Appreciative | No |  |
| Matariki | Jun-Jul (varies) | New Zealand | Māori New Year | Stars, constellations | Deep blue, white | Star patterns | Reflective | No |  |
| Ferragosto | Aug | Italy | Peak summer holiday | Beach, sun | Aqua, coral | Waves | Relaxed | No |  |
| Feria de las Flores | Aug | Colombia | Flower parade and culture | Flowers | Bright florals | Petals | Joyful | No |  |
| Obon | Aug 13-16 | Japan | Remembrance of ancestors | Lanterns | Warm amber | Floating lights | Respectful | No |  |
| Waffle House Fight Club Day | Aug 24 | USA | Pop-culture anniversary | Waffles | Yellow, brown | Retro diner | Humorous | No |  |
| Tsukimi / Mid-Autumn Festival | Sep-Oct | East Asia | Moon-viewing and harvest | Moon, lanterns | Gold, navy | Clouds | Tranquil | No |  |
| Talk Like a Pirate Day | Sep 19 | International | Humorous parody day | Pirate hats | Black, red | Rough textures | Playful | No |  |
| Frühlingsfest | Late Sep-Early Oct | Germany | Beer and folk festival | Pretzels, steins | Blue, white | Bavarian diamonds | Festive | No |  |
| Thanksgiving (Canada) | Oct (2nd Mon) | Canada | Harvest and gratitude | Leaves, turkey | Warm browns | Autumn leaves | Cozy | No |  |
| Thanksgiving (USA) | Nov (4th Thu) | USA | Harvest and gratitude | Turkey, cornucopia | Warm earth tones | Leaves | Cozy | No |  |
| Black Friday | Nov (4th Fri) | International | Major shopping day | Price tags | Black, red | Bold typography | Urgent | No | Often followed by Cyber Monday |
| Powwows | Varies / Seasonal | North America | Indigenous cultural gatherings | Drums, regalia | Earth tones | Feathers | Communal | No |  |
| Reindeer Racing | Winter months | Arctic | Traditional winter sport | Reindeer, sleds | White, red | Snow textures | Energetic | No |  |
| Festival of Masks | Varies | West Africa | Traditional mask ceremonies | Masks | Bold earth colors | Tribal patterns | Ceremonial | No |  |
| Lake of Stars Festival | Varies | Malawi | Music and arts festival | Lake, stars | Deep blue | Waves | Creative | No |  |
| Sauti za Busara | Varies | Zanzibar | African music festival | Instruments | Warm tropical | Rhythmic lines | Energetic | No |  |
| Bushfire Festival | Varies | Eswatini | Music and arts with workshops | Instruments, people | Warm sunset tones | Organic patterns | Community-focused | No |  |







