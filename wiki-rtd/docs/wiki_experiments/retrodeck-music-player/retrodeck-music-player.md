# RetroDECK ES-DE Background Music

<img src="../../../wiki_icons/pixelitos/applications-multimedia.png" width="75">

This experiment was initiated by the user **Partack** and later expanded upon by the RetroDECK Team. **Partack** goal was to explore the possibility of doing custom scripts to enable very basic music playback in ES-DE.

**Note:** That ES-DE is working on a built-in Music Player already that will arrive in an upcoming update (it will be better then this).


### Disclaimer on Experiments 

These experiments are created by the RetroDECK Team and/or Community. The guides are intended for people with technical knowledge and a passion for tinkering. Using these guides *might* put RetroDECK and your data at risk. The RetroDECK Team can't provide any support for these experiments or fix any issues they might cause on your system or RetroDECK installation.

## Information

The scripts supports `.mp3`, `.ogg`, `.flac` and `.wav` music files.

## Prerequisites 

- Create the `retrodeck/music` folder.
- Enable the Custom Event Scripts in ES-DE: Go to the `ES-DE Main Menu` -> `ES-DE Configurations` -> `Other Settings` -> `Enable Custom Event Scripts`.

## How-to: Play Music

Go to XXX download the .zip file containing the four scripts:

```
music_game_end.sh
music_game_start.sh
music_quit.sh
music_startup.sh
```
Extract them into:

```
~/.var/app/net.retrodeck.retrodeck/config/ES-DE/scripts/
```

Open the terminal and run the following command (makes the scripts executable): `chmod +x

```
~/.var/app/net.retrodeck.retrodeck/config/ES-DE/scripts/**/*.sh

```

Place your music files into the `retrodeck/music` folder.


### Additional Options

There are some options in the `music_startup.sh` script (in the startup folder):


```
MUSIC_DIR="$rdhome/music"
CROSSFADE=true          # true or false
CROSSFADE_DURATION=2    # in seconds
VOLUME=0.2              # from 0.0 to 1.0

```

## Uninstalling the Scripts

- Disable the Custom Event Scripts in ES-DE: Go to the `ES-DE Main Menu` -> `ES-DE Configurations` -> `Other Settings` -> `Enable Custom Event Scripts`.
- Delete the scripts in `~/.var/app/net.retrodeck.retrodeck/config/ES-DE/scripts`.
- Optionally, remove the `retrodeck/music` folder.
