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

| Event | Date (Typical) | Region / Country | Description | Key Symbols | Color Palette | Patterns & Motifs | Mood | Logo Available | Comments |
|---|---|---|---|---|---|---|---|---|---|
| New Year’s Eve / Day | Dec 31–Jan 1 | International | Celebration marking the end of the year and start of the new year | Fireworks, clocks, champagne | Gold, silver, black, midnight blue | Clocks, sparkles, confetti | Festive, glamorous | No |  |
| End-of-Year Holiday Period | Dec 24–Jan 1 | International | Year-end celebrations and time off | Lights, gifts | Red, green, gold | Sparkles | Warm | Yes |  |
| Up-Helly-Aa | Late Jan | Scotland | Fire festival with torchlight processions and Viking themes | Torches, Viking ships | Orange, black, steel | Flames, Norse patterns | Dramatic, fiery | No |  |
| Desert Kite Festival | Jan–Mar (varies) | UAE | Large outdoor kite-flying event | Kites, wind, sky | Bright multicolor, blue | Geometric kite shapes | Joyful, airy | No |  |
| Camel Festival | Jan–Mar (varies) | Saudi Arabia | Cultural festival with camel shows and races | Camels, desert motifs | Sand, brown, gold | Tribal patterns | Traditional, proud | No |  |
| Lunar New Year (春节) | Jan–Feb (varies) | East Asia | Lunar calendar new year with family reunions and festivities | Lanterns, dragons, fireworks | Red, gold | Clouds, waves, zodiac | Joyful, auspicious | Yes |  |
| Groundhog Day | Feb 2 | USA / Canada | Folklore day predicting length of winter | Groundhog, burrow | Brown, white | Simple folk motifs | Playful, quirky | No |  |
| Setsubun | Feb 3 | Japan | Seasonal transition marking start of spring | Beans, oni masks | Red, white | Masks, soybeans | Ritual, lighthearted | No |  |
| Valentine’s Day | Feb 14 | International | Celebration of love, affection, and friendship | Hearts, roses | Red, pink, white | Hearts, ribbons | Romantic, warm | Yes |  |
| Inti Raymi | Feb | Peru | Historic Incan festival celebrating the sun | Sun discs, traditional dress | Gold, red | Incan geometry | Ceremonial, proud | No |  |
| International Polar Bear Day | Feb 27 | Arctic | Awareness day for polar bear conservation | Polar bears, ice | White, icy blue | Ice textures | Reflective, educational | No |  |
| Carnevale / Mardi Gras / Semmeldagen | Feb–Mar (varies) | Europe, Americas | Pre-Lent celebration with parades, masks, indulgent foods | Masks, beads, pastries | Purple, green, gold; jewel tones | Feathers, confetti | Festive, extravagant | No |  |
| International GM Day / RetroDECK Birthday | Mar 4 | Community / Gaming | Honors game masters and RetroDECK | Controllers, dice | Dark UI tones, accent neon | Pixel art | Celebratory, geeky | Yes |  |
| International Women’s Day | Mar 8 | International | Celebration of women’s achievements and equality | Flowers, unity symbols | Purple, green, white | Minimalist lines | Empowering | No |  |
| St. Patrick’s Day | Mar 17 | Ireland / International | Celebration of Irish culture | Shamrocks, leprechauns | Green, gold | Celtic knots | Lively, festive | Yes |  |
| Holi | Mar (varies) | India | Festival of colors celebrating spring | Colored powders | Bright rainbow | Splashes, gradients | Energetic, joyful | No |  |
| Pride | Mar–Jun (varies) | International | LGBTQ+ celebration and inclusion | Rainbow flags | Rainbow | Stripes | Proud, joyful | Yes |  |
| Hanami (花見) | Late Mar–Early Apr | Japan | Cherry blossom viewing | Sakura petals, picnics | Soft pink, white | Falling petals | Calm, serene | No |  |
| April Fools’ Day | Apr 1 | International | Day of jokes and pranks | Jester hats, props | Bright primaries | Comic shapes | Silly, playful | No |  |
| Earth Day | Apr 22 | International | Environmental awareness and action | Earth, leaves | Green, blue | Organic shapes | Hopeful, mindful | No |  |
| International Penguin Awareness Day | Apr 25 | Antarctica | Penguin conservation awareness | Penguins, ice | Black, white, blue | Ice patterns | Educational | No |  |
| Walpurgis Night | Apr 30 | Northern Europe | Spring celebration with bonfires | Fires, silhouettes | Orange, dark blue | Flames | Mystical | No |  |
| May Day | May 1 | Europe / International | Celebration of spring | Flowers, ribbons | Pastels | Floral wreaths | Fresh, cheerful | No |  |
| Kodomo no Hi | May 5 | Japan | Celebration of children | Koinobori carp | Red, blue | Fish scales | Cheerful | Yes |  |
| Syttende Mai | May 17 | Norway | National day with parades | Flags, bunads | Red, white, blue | Clean lines | Proud, joyful | No |  |
| Cheese Rolling Festival | May (varies) | England | Traditional hill-rolling cheese race | Cheese wheel | Yellow, green | Circular motion | Absurd, energetic | No |  |
| Dragon Boat Festival | May–Jun (varies) | East Asia | Boat races and traditions | Dragon boats, drums | Red, teal | Wave patterns | Competitive, festive | No |  |
| Mother’s Day | May (2nd Sunday) | International | Honoring mothers and caregivers | Flowers, cards | Soft pastels | Floral motifs | Warm, thankful | No |  |
| White Night Festivals | Jun (varies) | Northern Europe | Cultural events during long daylight | Sun, cityscapes | Light blue, gold | Gradients | Dreamy | No |  |
| Father’s Day | Jun (3rd Sunday) | International | Honoring fathers and caregivers | Tools, ties | Blue, gray | Simple icons | Appreciative | No |  |
| Matariki | Jun–Jul (varies) | New Zealand | Māori New Year | Stars, constellations | Deep blue, white | Star patterns | Reflective | No |  |
| Midsommarafton | Late Jun | Sweden | Midsummer celebration | Flower crowns, maypoles | Yellow, blue, green | Floral wreaths | Bright, outdoorsy | No |  |
| Running of the Bulls | Jul | Spain | Traditional street festival | Bulls, streets | Red, white | Motion streaks | Intense | No |  |
| Tanabata | Jul 7 | Japan | Star-crossed lovers festival | Stars, wishes | Indigo, gold | Streamers | Whimsical | Yes |  |
| Ferragosto | Aug | Italy | Peak summer holiday | Beach, sun | Aqua, coral | Waves | Relaxed | No |  |
| Feria de las Flores | Aug | Colombia | Flower parade and culture | Flowers | Bright florals | Petals | Joyful | No |  |
| La Tomatina | Aug (late) | Spain | Tomato-throwing festival | Tomatoes | Red | Splatter | Chaotic | No |  |
| Obon | Aug 13–16 | Japan | Remembrance of ancestors | Lanterns | Warm amber | Floating lights | Respectful | No |  |
| Waffle House Fight Club Day | Aug 24 | USA | Pop-culture anniversary | Waffles | Yellow, brown | Retro diner | Humorous | No |  |
| Tsukimi / Mid-Autumn Festival | Sep–Oct | East Asia | Moon-viewing and harvest | Moon, lanterns | Gold, navy | Clouds | Tranquil | No |  |
| Talk Like a Pirate Day | Sep 19 | International | Humorous parody day | Pirate hats | Black, red | Rough textures | Playful | No |  |
| Frühlingsfest | Late Sep–Early Oct | Germany | Beer and folk festival | Pretzels, steins | Blue, white | Bavarian diamonds | Festive | No |  |
| Oktoberfest | Late Sep–Early Oct | Germany | Large beer festival | Beer steins | Amber, blue | Tents | Lively | No |  |
| World Teachers’ Day | Oct 5 | International | Appreciation of educators | Apples, books | Blue, green | Clean lines | Respectful | No |  |
| Thanksgiving (Canada) | Oct (2nd Mon) | Canada | Harvest and gratitude | Leaves, turkey | Warm browns | Autumn leaves | Cozy | No |  |
| Halloween | Oct 31 | International | Costumes and spooky fun | Pumpkins, bats | Orange, black | Spiderwebs | Playful spooky | No |  |
| Día de los Muertos | Nov 1–2 | Mexico | Remembrance of the dead | Skulls, marigolds | Orange, purple | Decorative skulls | Reverent, colorful | No |  |
| Diwali | Nov (varies) | India | Festival of lights | Diyas, fireworks | Gold, purple | Mandalas | Radiant | No |  |
| International Men’s Day | Nov 19 | International | Men’s health and role models | Ribbons | Blue | Minimal icons | Reflective | No |  |
| Thanksgiving (USA) | Nov (4th Thu) | USA | Harvest and gratitude | Turkey, cornucopia | Warm earth tones | Leaves | Cozy | No |  |
| Black Friday | Nov (4th Fri) | International | Major shopping day | Price tags | Black, red | Bold typography | Urgent | No | Often followed by Cyber Monday |
| Monkey Buffet Festival | Nov (varies) | Thailand | Feast for local monkeys | Fruit | Bright tropical | Organic shapes | Whimsical | No |  |
| Lucia Day | Dec 13 | Sweden | Festival of light | Candles, wreaths | White, gold | Light rays | Peaceful | No |  |
| Powwows | Varies / Seasonal | North America | Indigenous cultural gatherings | Drums, regalia | Earth tones | Feathers | Communal | No |  |
| Reindeer Racing | Winter months | Arctic | Traditional winter sport | Reindeer, sleds | White, red | Snow textures | Energetic | No |  |
| Festival of Masks | Varies | West Africa | Traditional mask ceremonies | Masks | Bold earth colors | Tribal patterns | Ceremonial | No |  |
| Lake of Stars Festival | Varies | Malawi | Music and arts festival | Lake, stars | Deep blue | Waves | Creative | No |  |
| Sauti za Busara | Varies | Zanzibar | African music festival | Instruments | Warm tropical | Rhythmic lines | Energetic | No |  |
| Bushfire Festival | Varies | Eswatini | Music and arts with workshops | Instruments, people | Warm sunset tones | Organic patterns | Community-focused | No |  |






