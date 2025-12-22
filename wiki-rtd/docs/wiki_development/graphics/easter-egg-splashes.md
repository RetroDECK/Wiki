# RetroDECK Boot Splash / Logo

<img src="../../../wiki_images/logos/rd-esde-logo.svg" width="300">

## Main splash location

The main retrodeck splash is located in:

[res/splash.svg](https://github.com/RetroDECK/RetroDECK/blob/main/res/splash.svg)

This is used at all times unless it is being overridden by the Easter Egg function.

## Easter Egg function

The function is part of the [config/retrodeck/reference_lists/features.json](https://github.com/RetroDECK/RetroDECK/blob/cooker/config/retrodeck/reference_lists/features.json) json.

The `splash_screens"`  looks in the reference .svg files under: [res/extra_splashes/](https://github.com/RetroDECK/RetroDECK/blob/main/res/extra_splashes/) and overrides the bootlogo with one of the .svg files from the referense list.

```
name_of_holiday": {
    "new_year": {
      "start_date": "MMDD",
      "end_date": "MMDD",
      "start_time": "MMDD",
      "end_time": "MMDD",
      "filename": "placeholder.svg"


```


**Example:**

```
 "splash_screens": {
    "new_year": {
      "start_date": "1231",
      "end_date": "0106",
      "start_time": "0000",
      "end_time": "2359",
      "filename": "newyear.svg"
    },
    "chinese_new_year": {
      "start_date": "0209",
      "end_date": "0212",
      "start_time": "0000",
      "end_time": "2359",
      "filename": "rd-lunar-snake-splash.svg"
    },
```

Here we show both the New Year and Lunar New Year

---

## Boot Logo Credits

The Boot Logo or Boot Splashes

### Standard Logo

<img src="../../../wiki_images/logos/rd-logo-box.png" width="500">

**Artists that contributed:**<br>

The following contributors played important roles in the development of the first and second iterations of the RetroDECK logo, including work on color schemes, iconography, SteamGridDB assets, and overall conceptual design:

[Pixelguin](https://github.com/Pixelguin)<br>
[XargonWan](https://github.com/XargonWan)<br>
[antfortytwo](https://github.com/anthonycaccese/)<br>
[MorGuux](https://github.com/MorGuux)<br>
[Weestuarty](https://github.com/Weestuarty)
Víctor R<br>

### Xmas Holiday Period

<details><summary> Spoiler </summary>
<img src="../../../wiki_images/eastereggs/rd-xmas-logo.svg" width="500">

Artist: Weestuarty
</details>

### Valentines Day

<details><summary> Spoiler </summary>
<img src="../../../wiki_images/eastereggs/rd-valentines-logo.svg" width="500">
Artist: Weestuarty
</details>

### Lunar New Year - 春节

<details><summary> Spoiler </summary>
<img src="../../../wiki_images/eastereggs/rd-lunar-dragon-cn-logo.svg" width="500">
Artist: Weestuarty and XargonWan
</details>

### St Patrick's Day

<details><summary> Spoiler </summary>
<img src="../../../wiki_images/eastereggs/rd-stpatricks-logo.svg" width="500">
Artist: Weestuarty
</details>

### Kodomo no Hi - こどもの日

<details><summary> Spoiler </summary>
<img src="../../../wiki_images/eastereggs/rd-kodomo-golden.svg" width="500">
Artist: XargonWan
</details>

### RetroDECK's Birthday & GM's day

<details><summary> Spoiler </summary>
<img src="../../../wiki_images/eastereggs/rd-gm-bday-splash.svg" width="500">
Artist: Weestuarty
</details>

### Tanabata

<details><summary> Spoiler </summary>
<img src="../../../wiki_images/eastereggs/rd-tanabata.svg" width="500">
Artist: XargonWan
</details>

### Pride

<details><summary> Spoiler </summary>
<img src="../../../wiki_images/eastereggs/rd-pride.svg" width="500">
Artist: Weestuarty
</details>

---

## Looking for Artist

| Date (Typical) | Event | Country / Origin | Short Description | Logo Available | Comments |
|---|---|---|---|---|---|
| Jan 1 | New Year’s Day | International | Celebration of the start of the new calendar year | Yes (common symbols) |  |
| Jan–Feb (varies) | Lunar New Year (春节) | China / East Asia | New year based on the lunar calendar, marked by family reunions and festivities | Yes |  |
| Feb 3 | Setsubun | Japan | Rituals to drive away evil spirits and welcome spring | No |  |
| Feb 14 | Valentine’s Day | International | Celebration of romantic love and affection | Yes |  |
| Feb–Mar (varies) | Carnevale / Mardi Gras / Semmeldagen | Italy / France / Nordics | Festive period before Lent with parades and special foods | Yes (regional variants) |  |
| Mar 4 | International GM Day / RetroDECK’s Birthday & GM’s Day | Community / Gaming | Honors game masters and celebrates RetroDECK project | Yes |  |
| Mar 17 | St Patrick’s Day | Ireland | Celebration of Irish culture and heritage | Yes |  |
| Mar (varies) | Holi | India | Festival of colors celebrating spring, love, and the triumph of good over evil | Yes (colorful imagery) |  |
| Apr 1 | April Fools’ Day | International | Day for jokes and harmless pranks | No |  |
| Late Mar–Early Apr (varies) | Hanami (花見) | Japan | Viewing and celebrating cherry blossoms | No |  |
| Apr 30 | Walpurgis Night (Valborgsmässoafton) | Sweden / Northern Europe | Bonfires to welcome spring and ward off evil | No |  |
| May 1 | May Day (Labour Day / Första maj) | International / Sweden | Celebration of workers and spring | Yes |  |
| May 5 | Kodomo no Hi (こどもの日) | Japan | Celebration of children’s health and happiness | Yes |  |
| Mar–Jun (varies) | Pride | International | Celebrations of LGBTQ+ identity and rights | Yes (rainbow theme) |  |
| Late Jun (Fri–Sat) | Midsommarafton | Sweden | Celebration of midsummer with dancing and food | No |  |
| Jul 7 | Tanabata | Japan | Festival celebrating the meeting of star‑crossed lovers | No |  |
| Aug 13–16 | Obon | Japan | Honoring ancestral spirits | No |  |
| Aug 15 | Ferragosto | Italy | Summer holiday marking peak of vacation season | No |  |
| Sep–Oct (full moon) | Tsukimi / Mid‑Autumn Festival (中秋节) | Japan / China | Moon‑viewing and harvest festival celebrating the full moon | Yes |  |
| Sep 19 | Talk Like a Pirate Day | International | Fun, parody day to speak like stereotypical pirates | Yes (pirate iconography) |  |
| Late Sep–Early Oct | Oktoberfest | Germany | Large beer and folk festival | Yes |  |
| Oct 31 | Halloween | International | Celebration with costumes and trick‑or‑treating | Yes |  |
| Oct (Canada) / Late Nov (US) | Thanksgiving | Canada / USA | Giving thanks for the harvest and blessings | Yes |  |
| Dec 24–Jan 1 | Xmas Holiday Period | International | Christmas and end‑of-year celebrations | Yes |  |
| Dec 31 | New Year’s Eve | International | Celebration marking the end of the year | Yes |  |


