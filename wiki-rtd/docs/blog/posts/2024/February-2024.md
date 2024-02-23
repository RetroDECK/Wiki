---
date: 2024-02-23
---

# February 2024: 0.8.0b Progress!

Highlights:

- Status 0.8.0b: All Emulators are running
- External Controllers done
- ES-DE 3.0
- ES-DE Android version
- And more!


<!-- more -->

## Status 0.8.0b: All Emulators are running

Since last month all emulators we targeted are now running from within RetroDECK.

- Ryujinx
- OpenBOR
- Solarus
- IkemanGO (M.U.G.E.N)
- MAME

What is left is to make them compatible (where possible) with some of our tools and update the configurations and inputs.

But we are closing in on the finishing line!

---

<img src="../../../es-de-logo.png" width="100">

## ES-DE 3.0 in 0.8.0b

The ES-DE Team just released a major update: ES-DE version 3.0

They are rebranding to just ES-DE and have a lot of cool new features.

With the update also came big architectural changes. RetroDECK will need to accommodate for those changes so we cannot ship a minor update of it.

We will however ship it as part of 0.8.0b, as we need to verify everything and make the upgrade as safe and as smooth as possible.

### Do not update your themes!

ES-DE 3.0 came with many new features for theme builders, but those features are not backward compatible and will be buggy íf used with the older versions ES-DE. Please don’t update your themes until RetroDECK 0.8.0b is out (only the themes that use the new features can break).  😊

### ES-DE Android Port

As we are friends with the ES-DE Team we also want to highlight that they just released their Android version of the app on the Amazon Appstore. This brings your favorite launcher to Android!

They have a one-time purchase to buy the app. So, if you want to show the interface, we all use some love, buy the app :)

- [Amazon Appstore - ES-DE](https://www.amazon.com/dp/B0CVXRHWTT/)
- [Android - User Guide](https://gitlab.com/es-de/emulationstation-de/-/blob/master/ANDROID.md)
- [Android - FAQ](https://gitlab.com/es-de/emulationstation-de/-/blob/master/FAQ-ANDROID.md)

But sadly, there have been a lot of fake apps posted all over since the release. The ES-DE Team is dealing with them as they pop up (like an angry game of "ES-DE Fakes" Whac-A-Mole).

If you intend to buy it use the correct link, listed above and always on their website [ES-DE.org](https://es-de.org/).

---

## Update: Godot Configurator Translations

<img src="../../../configurator-cn.webp" width="750">

(Still WIP)

We have gotten several more translations in the works to the Configurator Godot Version thanks to the RetroDECK community!
The fonts still need work but it is progress.


- English
- Swedish
- Japanese
- Chinese (Simplified)
- Italian
- German
- Ukrainian

Note that the Godot Configurator is not part of 0.8b but a later update.

---

## Update: External Controller Profiles

These are mostly done and ready for release in 0.8b and they have a little radial menu as well.

Check the following pages on how to try them today:

- [RetroDECK - Issue 573](https://discord.gg/Dz3szYsP8g)
- [External Controllers Information Link Page](https://retrodeck.readthedocs.io/en/latest/wiki_general/retrodeck-input-support/)
- [External Controllers Radial](https://retrodeck.readthedocs.io/en/latest/wiki_controllers/radial-menus/controller-standard-radial/)

We have seen that in certain Linux distributions the radial menus are sometimes hiding behind the ES-DE interface. This is a bug in the Steam Overlay in Steam and does not only affect RetroDECK but all profiles that use radials or touch menus in other games as well. The RetroDECK Team have submitted a bug report to Valve.

The External Controller Radials work fine on the Steam Deck in Gamemode when connected.

### Joystick as Mouse
This is a feature many underestimate the value of. Steam Deck user already have a built in Mouse on the `Right Tochpad` in our profile.

We want to bring that function to the external controllers as well.

**What does this allow me to do?**

This will allow you to do the following with a standard external controller:

- PC-Systems: Use it as a mouse for games that require mouse input like Point & Click Adventure games.
- Navigate PC Interfaces: Navigate and click on interfaces that normally cannot be used with a controller like several Emulators GUIs.
- Arcade / Console: Play Light gun games.
- Dolphin: Control the Wii Pointer and navigate Wii Menus (we are changing the Dolphin binds to account for this).
- Dolphin: As you can quickly switch between mouse and joystick in this allows for some maneuvers in certain games. Press and hold `Select` and quickly capture those "bits of stars" with the Wii Pointer using the `Right Joystick` then release `Select` and keep playing.

**Standard Controllers:**

By holding `Select` + Moving the `Right Joystick` you can now simulate a mouse.

While holding `Select` pressing `R3` sends `Left Click`.

While holding `Select` moving `Left Joystick` open the Radial Menu. By pressing the `RetroDECK Logo` it sends `Right Click`.


**PS4 & PS5 Controllers**

In addition to the commands above you can use the touchpad instead without the need of pressing `Select`.

**Steam Controller**

For the Steam Controller the `R4` button will toggle the `Right Touchpad` between permanent `Joystick Mode` or permanent `Mouse Mode`. But you can still do the hold `Select` + `Right Touchpad`  as `Mouse Mode` if you want to.


*"We in the RetroDECK Team have a strong commitment to make sure that our users don't need to move out of the sofa to change the settings unless absolutely necessary"* 🙃

---

## Steam Deck: ScummVM Radial Menu

<img src="../../../scummvm-radial.webp" width="300">

On the Steam Deck we have added a new radial menu for ScummVM that allows you quick access to the various letter commands used by many ScummVM games.

What you used to do is in Point & Click Adventure games:

- See item you want to pick-up.
- Move cursor to the corner where all the commands are.
- Select the Pick-Up command.
- Move the cursor back to the item.
- Click on the item to pick it up.

What the radial allows you to do:

- Hover the cursor over the item you want to pick-up.
- Tap the left touchpad and select the Pick-Up command from the Radial.
- Click on the item to pick it up.

*"You will save at least one whole second to half a second from this!"*


## That is all for February


Thanks everyone!

//The RetroDECK Team

[Discord](https://discord.gg/Dz3szYsP8g)

[Github](https://github.com/XargonWan/RetroDECK)

[Wiki](https://github.com/XargonWan/RetroDECK/wiki)

[Donations](https://retrodeck.readthedocs.io/en/latest/wiki_about/donations-licenses/)
