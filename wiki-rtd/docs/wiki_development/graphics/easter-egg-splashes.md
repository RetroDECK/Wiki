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

| Event | Date (Typical) | Country / Origin | Short Description | Logo Available | Comments |
|---|---|---|---|---|---|
| New Year’s Eve / Day | Dec 31–Jan 1 | International | Celebration marking the end of the year and start of the new year | No |  |
| Desert Kite Festival | Jan–Mar (varies) | UAE | Large outdoor kite-flying event | No |  |
| Camel Festival | Jan–Mar (varies) | Saudi Arabia | Cultural festival with camel shows and races | No |  |
| Up-Helly-Aa | Jan (late) | Scotland | Fire festival with torchlight processions and Viking-inspired themes | No |  |
| Lunar New Year (春节) | Jan–Feb (varies) | East Asia | New year based on the lunar calendar, marked by family reunions and festivities | Yes |  |
| Groundhog Day | Feb 2 | USA / Canada | Folklore-based day predicting the length of winter | No |  |
| Setsubun | Feb 3 | Japan | Seasonal tradition marking the transition to spring | No |  |
| Sámi National Day | Feb 6 | Northern Scandinavia | Celebration of Sámi culture, music, and heritage | No |  |
| Valentine’s Day | Feb 14 | International | Celebration of love, affection, and friendship | Yes |  |
| Carnevale / Mardi Gras / Semmeldagen | Feb–Mar (varies) | Europe | Festive season with parades, costumes, and traditional foods | No |  |
| Inti Raymi | Feb | Peru | Historic Incan festival celebrating the sun and seasonal change | No |  |
| International Polar Bear Day | Feb 27 | Arctic | Raises awareness about polar bear conservation and climate change | No |  |
| International GM Day / RetroDECK’s Birthday & GM’s Day | Mar 4 | Community / Gaming | Honors game masters and celebrates the RetroDECK project | Yes |  |
| International Women’s Day | Mar 8 | International | Celebration of women’s achievements and equality | No |  |
| Holi | Mar (varies) | India | Cultural festival celebrating spring and togetherness with colors | No |  |
| St. Patrick’s Day | Mar 17 | Ireland / International | Celebration of Irish culture with parades, music, and green-themed festivities | Yes |  |
| Hanami (花見) | Late Mar–Early Apr (varies) | Japan | Viewing and celebrating cherry blossoms | No |  |
| April Fools’ Day | Apr 1 | International | Day for jokes and harmless pranks | No |  |
| Earth Day | Apr 22 | International | Awareness and action for environmental protection | No |  |
| International Penguin Awareness Day | Apr 25 | Antarctica | Raises awareness about penguins and conservation efforts | No |  |
| Walpurgis Night (Valborgsmässoafton) | Apr 30 | Northern Europe | Traditional spring celebration with bonfires | No |  |
| May Day (Spring Celebration) | May 1 | Europe / International | Celebration of spring and seasonal change | No |  |
| Kodomo no Hi | May 5 | Japan | Celebration of children’s health and happiness | Yes |  |
| Syttende Mai | May 17 | Norway | Community parades, traditional dress, and cultural celebrations | No |  |
| Cheese Rolling Festival | May (varies) | England | Participants chase a rolling cheese down a steep hill | No |  |
| Dragon Boat Festival | May–Jun (varies) | East Asia | Boat races and seasonal cultural activities | No |  |
| Mother’s Day | May (2nd Sunday) | International | Honoring mothers and caregivers | No |  |
| White Night Festivals | Jun (varies) | Northern Europe | Cultural events celebrating long daylight hours | No |  |
| Matariki | Jun–Jul (varies) | New Zealand | Māori New Year celebrated with feasts, cultural events, and storytelling | No |  |
| Father’s Day | Jun (3rd Sunday) | International | Honoring fathers and caregivers | No |  |
| Pride | Mar–Jun (varies) | International | Celebrations of LGBTQ+ identity and inclusion | Yes |  |
| Midsommarafton | Late Jun (Fri–Sat) | Sweden | Seasonal celebration of midsummer with food and dancing | No |  |
| Running of the Bulls | Jul (early–mid) | Spain | Cultural street festival involving traditional bull runs | No |  |
| Tanabata | Jul 7 | Japan | Seasonal festival inspired by folklore | Yes |  |
| Ferragosto | Aug | Italy | Peak summer holiday period | No |  |
| Feria de las Flores | Aug | Colombia | Flower parade and cultural celebrations | No |  |
| Waffle House Fight Club Day | Aug 24 | USA | Commemorates a quirky pop culture event at Waffle House restaurants | No |  |
| La Tomatina | Aug (late) | Spain | Large-scale tomato-throwing street festival | No |  |
| Obon | Aug 13–16 | Japan | Remembrance and family gathering tradition | No |  |
| Tsukimi / Mid-Autumn Festival / Moon Festival | Sep–Oct (full moon) | Japan / China / East Asia | Harvest and moon-viewing celebration | No |  |
| Talk Like a Pirate Day | Sep 19 | International | Humorous parody day | No |  |
| Frühlingsfest | Late Sep–Early Oct | Germany | Spring festival similar to Oktoberfest with food and beer | No |  |
| Oktoberfest | Late Sep–Early Oct | Germany | Large-scale folk and beer festival | No |  |
| World Teachers’ Day | Oct 5 | International | Appreciation of teachers and education | No |  |
| Halloween | Oct 31 | International | Costumes, themed activities, and community events | No |  |
| Thanksgiving (Canada) | Oct (2nd Monday) | Canada | Holiday to give thanks for the harvest and blessings of the year | No |  |
| Día de los Muertos | Nov 1–2 | Mexico | Colorful celebration remembering deceased loved ones | No |  |
| Thanksgiving (USA) | Nov (4th Thursday) | USA | Holiday to give thanks for the harvest and blessings of the year | No |  |
| Black Friday | Nov (4th Friday) | USA / International | Major shopping day with widespread sales and discounts | No | Often followed by Cyber Monday |
| Monkey Buffet Festival | Nov (varies) | Thailand | Public feast prepared for local monkeys | No |  |
| Diwali | Nov 4–10 (varies) | India | Festival of lights celebrating joy and prosperity | No |  |
| International Men’s Day | Nov 19 | International | Focus on men’s health, well-being, and positive role models | No |  |
| Lucia Day (Luciadagen) | Dec 13 | Sweden | Cultural festival celebrating light during winter | No |  |
| End-of-Year Holiday Period | Dec 24–Jan 1 | International | Year-end celebrations and time off | Yes |  |
| Powwows | Varies / Seasonal | North America | Community gatherings with music, dance, and cultural storytelling | No |  |
| Reindeer Racing | Winter months | Arctic | Traditional winter events showcasing reindeer herding and sledding | No |  |
| Festival of Masks | Varies | West Africa | Traditional mask dances, music, and storytelling | No |  |
| Lake of Stars Festival | Varies | Malawi | International music and arts festival along Lake Malawi | No |  |
| Sauti za Busara | Varies | Zanzibar, Tanzania | Music festival celebrating African rhythms and culture | No |  |
| Bushfire Festival | Varies | Eswatini | International music and arts festival with cultural workshops | No |  |





