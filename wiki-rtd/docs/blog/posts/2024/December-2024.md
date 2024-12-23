--- 

date: 2024-12-19

--- 

  

# December 2024: Right Clicking Caroling

It's the last month the year! 

The team wishes everyone a happy winter season and happy holidays. 

🎅

## Highlights 

- Thanks Lx32, MonkeyX and dottormac

- Development - 0.9.0b Status updates 

- Framework

- PortMaster Integration

- Steam ROM Manager (SRM) Integration 

- Godot Configurator

- What is left for 0.9.0b release?

<!-- more --> 

--- 

<img src="../../../rd-xmas-logo.svg" width="300"> 

## Thanks Lx32, MonkeyX and dottormac

Special thanks to former RetroDECK Team members Lx32, MonkeyX and dottormac for their contributions.
They are now RetroDECK Alumni with special roles on Discord. 

Life can sometimes pull us away from contributing to open source projects. We want to extend our heartfelt thanks to:

- dottormac for their significant help with early testing of RetroDECK.
- Lx32 for focusing on the SRM implementation, and for his earlier work on BoilR to finally add games to Steam.
- MonkeyX for his contributions to the Godot Configurator and more.

We wish them a happy journey ahead and for those who just got into entrepreneurship ventures we hope for a big success. 

Keep in touch, Itakatta! 🤌🍕🍝🍌🤌 ❤️

--- 

<img src="../../../folder-blue-games.png" width="30"> 


## Open with RetroDECK - New function

<img src="../../../owr_appselect.png" width="500"> 

On the Linux Desktop (or desktop mode), we added the option to open and run various files directly with RetroDECK.

<img src="../../../littlemedusa.png" width="300"> 

In these examples, we will use the [Little Medusa - Demo](https://megacatstudios.com/pages/little-medusa) a `.nes` file called `LittleMedusa_8bitdemo.nes` from Mega Cat Studios.

### Example 1:  The Game Inside the Correct Roms Folder

<img src="../../../owr_infolder.png" width="300"> 

In this example, the `LittleMedusa_8bitdemo.nes` file is inside the `retrodeck/roms/nes` folder. 

When you click on it, RetroDECK opens it with the Nintendo Entertainment System emulator, and the game starts. 

RetroDECK knows that because you opened it from the `/roms/nes` folder, the game must correspond to that system.

### Example 2: The Game Outside the Roms Folder

<img src="../../../owr_nonedir.png" width="500"> 

In this example, the `LittleMedusa_8bitdemo.nes` file is not inside the `retrodeck/roms/nes` folder but in the `download` folder. 

When clicked, RetroDECK will prompt a dialog window asking which system the file belongs to and then run it.

--- 

<img src="../../../utilities-system-monitor.png" width="30"> 

## Framework 

- RetroDECK can now pick up logged-in Steam profiles for systems like SRM.
- Several light manifest pipeline issues resolved.
- More logs piped into the central retrodeck.log.

--- 

<img src="../../../portmaster.png" width="30"> 

## PortMaster Integration

- No reported issues; it works as expected in cooker. ✅ 

--- 

<img src="../../../srm-logo.png" width="30">   

## Steam ROM Manager (SRM) Integration 

- SRM is now working with your Steam username and syncing your favorite games to Steam. ✅

We know how you feel:

![type:audio](Blessed be Steam.mp3)

--- 

<img src="../../../godot.png" width="30">   
  
## Godot Configurator

- More menus and buttons added.
- Added the ability to launch SRM for tweaking settings or images.

--- 

## What is left for 0.9.0b release?

- All big features are implemented but need more testing.
- Emulators/Components updates and resolving any issues.
- Godot Configurator - some missing tools from the Legacy Configurator still need to be implemented.
- Godot Configurator - design improvements for some buttons/sub-menus.
- Minor tweaks and bugfixes. 

## That is all for now 

There are more things we are working on, but you will see them in future blog updates!
  
Thanks everyone! 

//The RetroDECK Team 

### Links 

[RetroDECK Website](https://retrodeck.net/)  
  
[Discord](https://discord.gg/WDc5C9YWMx) 

[Matrix](https://matrix.to/#/#retrodeck:matrix.org) 

[GitHub](https://github.com/XargonWan/RetroDECK) 

[Wiki](https://github.com/XargonWan/RetroDECK/wiki) 

[Donations](https://retrodeck.readthedocs.io/en/latest/wiki_about/donations-licenses/) 

[Lemmy](https://lemmy.zip/c/retrodeck) 
