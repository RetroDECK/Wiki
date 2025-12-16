--- 

date: 2024-11-10 

--- 

  

# November 2024: Merged winter 

It's a new month and more things to talk about!

## Highlights 

- Development is a bit slower

- New website 

- 3DS Emulation - status 

- Xenia - status 

- Godot Configurator - status 

- RetroDECK ES-DE Theme

- Merged Chungus Cooker 
  

<!-- more --> 

---

<img src="../../../battery-low-charging.png" width="80"> 

## Development is a bit slower  
  
Please note that this is a big release with several big features that requires coordination of many people that spends their free time doing this.

The team had an internal goal of December but sometimes IRL issues happen that takes away that time (work, family, life, death, love, etc..). 

We also do understand that people want more updated systems then current stable. 

0.9.0b is a huge endeavor as we are rewriting huge aspects of RetroDECK and adding tons of new features. 

As such we cannot give any ETA's on when 0.9.0b will be released and done

If you are following our GitHub you can see things are happening almost everyday and no one is sitting idle. 


--- 

<img src="../../../website.png" width="800"> 

## New website 

We are secretly soft launched our new website during Halloween. 

[RetroDECK NEW Website](https://retrodeck.net/)

Check it out and give feedback on the Discord on Lemmy.  

[Steam Deck HQ](https://steamdeckhq.com/retrodeck-new-website-custom-es-de-theme/) also did an article about it.

Thanks `Adam Iannazzone` for all his hard work on contributing his free time to the RetroDECK project and the new website.  

--- 

<img src="../../../citra.png" width="80"> 

## 3DS Emulation - status 

We had secret plans to include Lime3DS into the release of 0.9.0b. 

But as the big Citra forks are merging into one, it feels better to wait until they have sorted everything out.

When their new repo is up and running, we will target that. 

It is better to get the best project into RetroDECK. 


--- 

<img src="../../../xenia.png" width="80"> 

## Xenia - status 

We are looking into utilizing [UMU Launcher](https://github.com/Open-Wine-Components/umu-launcher) for Xenia (and other Wine based systems in the future). 

Instead of pulling in all vanilla Wine into RetroDECK and configuring it, UMU Launcher feels like a better architectural choice that can give more synergies in the future. 

We are waiting for the magnificent Open Wine Components Team (Heroic Game Launcher, Lutris, Bottles, Lutris, Proton-GE and more) to finish their Flatpak version. 

Xenia will not be part of 0.9.0b. 

--- 

<img src="../../../godot.png" width="80"> 

## Godot Configurator - status 

**Game Mode - Markdown viewer**

We are looking into a sophisticated markdown viewer to integrate into RetroDECK.  
 
The general thought is if we can provide an option to manually synchronize the entire wiki down to local storage with the click of a button and have it readable no matter if you are online or offline and viewed via the markdown viewer.  

--- 

<img src="../../../preferences-desktop-theme.png" width="80"> 

## New - RetroDECK ES-DE Theme

In 0.9.0b we are shipping a new exclusive ES-DE theme with RetroDECK.

The theme is a remix on the themes: Mini Banner made for Launchbox and ES-DE-Mini made for ES-DE.

But the RetroDECK Theme features:

- Other types of sub-menus and layout.
- Icons for RetroDECK features like PortMaster.
- RetroDECK colors / graphics. 

<img src="../../../RetroDECKESDE1.webp" width="800">

<img src="../../../RetroDECKESDE2.webp" width="800"> 

The original themes Mini Banner and ES-DE-Mini are made by: `Weestuarty`, `DerSchlachter`, `Dan Patrick`.

`Weestuarty` of the group made us the RetroDECK Theme (thanks! 💕).

---

<img src="../../../big-chungus.png" width="100"> 

## Merged Chungus Cooker 

Several of the big feature branches are now merged into Cooker proper (creating one chunky boi). 

Having one big cooker now will make it easier to test everything that 0.9.0b has to offer. 

In the future we might utilize the Flathub-beta remote to facilitate easy testing when the cooker is more stable. 

The current cooker now features most of 0.9.0b: 

- SRM (Add to Steam) 

- Godot Configurator 

- Updated Emulators / Components 

- PortMaster 

- Lighter Manifest 

- Ruffle 


There is still plenty of work to do and we always do need more people testing and developing. 

If you want to help with parts of development or testing, please contact us on `Matrix` / `Discord` in the `💙-i-want-to-help` channel. 

--- 

<img src="../../../utilities-system-monitor.png" width="80"> 

## Known issues in cooker 

This is a list of significant smaller and bigger issues we are investigating (in addition to all of the other 0.9.0b issues). 

<img src="../../../folder-blue-games.png" width="30"> 

### Lighter Manifest 

- There still are some issues when building certain systems and features via the new pipelines. Not all systems are updated yet. 

<img src="../../../srm-logo.png" width="30"> 

### SRM 

- Is not yet added to Godot Configurator and need to be enabled from Legacy Configurator. 

- Not all systems are adding the games as they should. 

- Does not work with the flatpak version of Steam.
  
<img src="../../../godot.png" width="30">   
  
### Godot Configurator 

- Bash slowdown for certain scripts if launched via Godot Configurator via Steam. 

- Need to add some more menus / buttons. 

- Needs more testing of all the features. 

<img src="../../../Ryujinx.png" width="30"> 

### Emulators / Components 

- Not all emulators have been updated yet as some have added additional dependencies we need to build. 

- Ryujinx is disabled at this moment, because of bugs. 

<img src="../../../portmaster.png" width="30"> 

### PortMaster  

- No reported issues 

<img src="../../../ruffle.png" width="30"> 

### Ruffle 


- Need to do a configuration pass on settings and controls. 

--- 

## That is all for now 

There are more things we are working on, but you will see them in future blog updates!
  
Thanks everyone! 

//The RetroDECK Team 

### Links 

[RetroDECK Website](https://retrodeck.net/)  
  
[Discord](https://discord.gg/WDc5C9YWMx) 

[Matrix](https://matrix.to/#/#retrodeck:matrix.org) 

[GitHub](https://github.com/RetroDECK/RetroDECK) 

[Wiki](https://github.com/RetroDECK/RetroDECK/wiki) 

[Donations](https://retrodeck.readthedocs.io/en/latest/wiki_about/donations-licenses/) 

[Lemmy](https://lemmy.zip/c/retrodeck) 
