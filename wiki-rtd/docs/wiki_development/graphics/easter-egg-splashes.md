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

You can also do an alternative to already existing logos or other holidays.

### April Fools' Day

### Hanami - 花見

### Towel's Day

### Midsommarafton

### Halloween

### Thanksgiving

### New Year's Eve

### Ferragosto

### Carnevale / Mardi Gras / Semmeldagen

### Mid-Autumn Festival - 中秋节

