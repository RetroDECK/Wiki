# RetroDECK Boot Splash / Logo

<img src="../../../wiki_images/logos/rd-esde-logo.svg" width="300">

## Main splash location

The main retrodeck splash is located in:

[res/splash.svg](https://github.com/XargonWan/RetroDECK/blob/main/res/splash.svg)

This is used at all times unless it is being overridden by the Easter Egg function.

## Easter Egg function

The function is part of the [functions/functions.sh](https://github.com/XargonWan/RetroDECK/blob/main/functions/functions.sh) shell script.

The `easter_eggs()` function looks in the reference list and overrides the bootlogo with one of the .svg files from the referense list.

Decription of the function:

```
easter_eggs() {
  # This function will replace the RetroDECK startup splash screen with a different image if the day and time match a listing in easter_egg_checklist.cfg
  # The easter_egg_checklist.cfg file has the current format: $start_date^$end_date^$start_time^$end_time^$splash_file
  # Ex. The line "1001^1031^0000^2359^spooky.svg" would show the file "spooky.svg" during any time of day in the month of October
  # The easter_egg_checklist.cfg is read in order, so lines higher in the file will have higher priority in the event of an overlap
  # USAGE: easter_eggs
```

The `easter_eggs()` function is as a part of the `start_retrodeck()` bootup function.

## Easter Egg reference list

The reference list is located under:

[emu-configs/defaults/retrodeck/reference_lists/easter_egg_checklist.cfg](https://github.com/XargonWan/RetroDECK/blob/main/emu-configs/defaults/retrodeck/reference_lists/easter_egg_checklist.cfg)

The config is populated with references with dates and time on when the easter egg logo should show up in the following format with `^` as seperators.

Each new logo is added as a new line.

### Example

`MMDD^MMDD^HHMM^HHMM^<rd-logoname-splash.svg>`

The order is:

- Start Date: MMDD
- End Date: MMDD
- Start Time: HHMM
- End Time: HHMM
- The `rd-logoname-splash.svg` should match the exact filename under [res/extra_splashes](https://github.com/XargonWan/RetroDECK/tree/main/res/extra_splashes)



### Example rd-xmas-splash.svg

The [res/extra_splashes/rd-xmas-splash.svg](https://github.com/XargonWan/RetroDECK/blob/main/res/extra_splashes/rd-xmas-splash.svg) exists within the extra_splashes folder.

The xmas logo splash in the reference list

`1201^1231^0000^2359^rd-xmas-splash.svg`

It says that the logo: `rd-xmas-splash.svg`

Should be displayed between:

- The 1st December and 31 December
- Within the time of 0000 to 2359 aka 24 hours.

## How to add a new splash logo

1. Get a hold of the logo in .svg format and it should have a transparent background.
2. Rename the logo so it matches the rd-logoname-splash.svg name so if as an example you want to add Easter name it: rd-easter-splash.svg
3. Put the logo in [extra_splashes](https://github.com/XargonWan/RetroDECK/tree/main/res/extra_splashes)
4. Update the [easter_egg_checklist.cfg](https://github.com/XargonWan/RetroDECK/blob/main/emu-configs/defaults/retrodeck/reference_lists/easter_egg_checklist.cfg) with new information.
5. Change the date of your PC to when the logo is supposed to show up to make sure it is working.
6. Done
