---
date: 2024-01-24
---

# February 2024: 0.8b Progress!

Highlights:

- All Emulators for 0.8b are running.
- External Controller v1b
- ES-DE 3.0
- ES-DE Android version
- And more!


<!-- more -->

## All 0.8b Emulators are running

Since last month all emulators we targeted are now running from within RetroDECK.

- Ryujinx
- OpenBOR
- Solarus
- IkemanGO (M.U.G.E.N)
- MAME

What is left is to make them compatible (where possible) with some of our tools and also update the configurations and inputs. But we are closing in on the finishing line!

---

## Will there be a Emulator Refresh soon?

Yes, we are working on 0.7.7b that will update the Emulators.

---

<img src="../../../es-de-logo.png" width="100">

## ES-DE 3.0 in 0.8b

The ES-DE Team just released a major update: ES-DE version 3.0

This has a lot of cool new features but it also came with with big architectural changes. RetroDECK will need to accommodate for those changes so we can't ship a minor update and just update to ES-DE 3.0.

We will however ship it as part of 0.8b, as we need to verify everything and make the upgrade as safe and as smooth as possible.

### ES-DE Android Port

As we are friends with the ES-DE Team we also want to highlight that they just released their Android version of the app on the Amazon Appstore. This brings your favorite launcher to Android!

They have a one time purchase to buy the app and have removed their Patreon. So if you want to show the interface we all use some love, buy the app :)

- [Amazon Appstore - ES-DE](https://www.amazon.com/dp/B0CVXRHWTT/)
- [Android - User Guide](https://gitlab.com/es-de/emulationstation-de/-/blob/master/ANDROID.md)
- [Android - FAQ](https://gitlab.com/es-de/emulationstation-de/-/blob/master/FAQ-ANDROID.md)


---

## Update: Godot Configurator Translations

<img src="../../../configurator-cn.webp" width="100">

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

Check the following pages on how to try them today.

- [RetroDECK - Issue 573](https://discord.gg/Dz3szYsP8g)
- [External Controllers Information Link Page](https://retrodeck.readthedocs.io/en/latest/wiki_general/retrodeck-input-support/)
- [External Controllers Radial](https://retrodeck.readthedocs.io/en/latest/wiki_controllers/radial-menus/controller-standard-radial/)

### Joystick as Mouse
This is a feature many underestimate the value of. Steam Deck user already have a built in Mouse on the `Right Tochpad` in our profile.
So we want to bring that function to the external controllers as well.

**What does this allow me to do?:**

This will allow you to do the following with a standard external controller:

- PC-Systems: Use it as a mouse (duh) for games that requires mouse input like Point & Click Adventure games.
- Navigate PC Interfaces: Navigate and click in interfaces that normally can not be used with a controller like several Emulators GUIs.
- Arcade / Console: Play Lightgun games.
- Dolphin: Control the Wii Pointer and navigate Wii Menus (we are changing the Dolphin binds to account for this).
- Dolphin: As you can quickly switch between mouse and joystick in this allows for some manouvers in certain games like: Press and hold `Select` and quickly capture those "bits of stars" with the Wii Pointer using the `Right Joystick`.

**Standard Controllers:**

By holding `Select` + Moving the `Right Joystick` you can now simulate a mouse.

While holding `Select` pressing  `R3` sends `Left Click`.

While holding `Select` moving `Left Joystick` open the Radial Menu. By pressing the `RetroDECK Logo` it sends `Right Click`.


**PS4 & PS5:**

In addition to the commands above you can use the touchpad instead without the need of pressing `Select`.

**Steam Controller:**

For the Steam Controller the `R4` button will toggle the `Right Touchpad` between permanent `Joystick Mode` or permanent `Mouse Mode`. But you can still do the hold `Select` + `Right Touchpad`  as `Mouse Mode` if you want to.


*"We in the RetroDECK Team have a strong commitment to make sure that our users don't need to move out of the sofa to change the settings unless absolutely necessary"* 🙃


## That is all for February


Thanks everyone!

//The RetroDECK Team

[Discord](https://discord.gg/Dz3szYsP8g)

[Github](https://github.com/XargonWan/RetroDECK)

[Wiki](https://github.com/XargonWan/RetroDECK/wiki)

[Donations](https://retrodeck.readthedocs.io/en/latest/wiki_about/donations-licenses/)
