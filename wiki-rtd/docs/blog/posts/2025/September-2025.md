--- 

date: 2025-09-05

--- 

# September 2025: Components, Components, Components!

Lots of development focused RetroDECK 0.10.0b news. 

The RetroDECK Team have been hard at work. 

## Highlights

- Switched from Patreon to OpenCollective
- ImCoKeMaN & PortMaster Team - Added more ports
- RetroDECK 0.10.0b - Status
- New Components Under Development
- Storage folder
- Lahrs folder Icons

<!-- more -->

## Note: We have switched from Patreon to OpenCollective

We already did the stealth switch months ago. 

But in short OpenCollective is more akin to our values then Patreon.

The Patreon is still open, but our plans are to migrate fully later and close it. 

**Read more here:** [Donations & Licenses](https://retrodeck.readthedocs.io/en/latest/wiki_about/donations-licenses/)


## ImCoKeMaN & PortMaster Team - Added more ports

<img src="../../../portmaster-logo.png" width="75"> 

Community member ImCoKeMaN have helped the PortMaster Team getting more X86_64 ports available and thus they are in RetroDECK.

So far about 30 new ports have been added.

We give ImCoKeMaN and the PortMaster Team our biggest thanks. 

## RetroDECK 0.10.0b - Status

<img src="../../../icon-rd.svg" width="75"> 

RetroDECK 0.10.0b is advancing under the “Project Neo” umbrella, that we first talked about in June.

We’re still addressing component‑specific issues, so the final release will take additional time and no ETAs. We’re rebuilding large portions of the application and its build pipeline from the ground up—making this effort feel more like **RetroDECK II** or **RetroDECK Neo**, which explains the name.

We are doing a mix of:

- **Adding new and old components** to the new architecture and make them run.
- **Updating configuration files** for each component to align with the new structure. 
- **Adapt all** Configurator Tools, framework and functions. 
- Conduct extensive **testing and bug‑fixing**.
- **Writing documentation** for the wiki.

---

## New Components Under Development

We’re experimenting with several components simultaneously, thanks the the new component system.

> **RetroDECK Team Comment:**  The final scope of what will be included in 0.10.0b is not set yet. Some will be deferred to later updates.


### Ares  

<img src="../../../ares-logo.png" width="75"> 

*Multi‑emulator as an alternative to RetroArch.*


### Azahar  

<img src="../../../azahar-logo.svg" width="75"> 

*Nintendo 3DS emulator Azahar.*


### Dosbox‑X  

<img src="../../../dosbox-x-logo.webp" width="75"> 

*Standalone DOS and Windows 9x emulator Dosbox‑X.*


### EKA2L1  

<img src="../../../eka2l1-logo.png" width="75"> 

*N‑Gage, N‑Gage II, and Symbian devices emulator EKA2L1.*

### Flycast  

<img src="../../../flycast-logo.webp" width="75"> 

*Standalone emulator Flycast for the SEGA Dreamcast.*


### Gargoyle  

<img src="../../../gargoyle-logo.webp" width="75"> 

*Interactive‑Fiction player Gargoyle (used primarily as a Infocom Z-machine emulator inside RetroDECK).* 

*It supports a wide range of interpreters: AdvSys, Agility, Alan 2/3, Bocfel, Git, Glulxe, Hugo, JACL, Level 9, Magnetic, Scare, ScottFree, TADS 2/3.*



### Hypseus Singe

<img src="../../../hypseus-logo.png" width="150"> 

*LaserDisc arcade emulator Hypseus Singe.*

### KEGS  

<img src="../../../kegs-apple2gs-logo.svg" width="150"> 

*Apple IIgs emulator KEGS.*


### Lindbergh Loader  

<img src="../../../lindbergh-loader-logo.png" width="75"> 

*SEGA Lindbergh arcade emulator Lindbergh Loader .*

### Mudlet  

<img src="../../../mudlet-logo.png" width="100"> 

*Mudlet the MUD client / Engine.*

> **RetroDECK Team Comment:** You will be able to directly connect to specific mud servers as seperate games in ES-DE with usermade .mud files.


### OpenBOR  

<img src="../../../openbor-logo.svg" width="100"> 

*Engine for OpenBOR games.*

> **RetroDECK Team Comment:** We have tried to add it before but it never did work quite right. But it works now with with usermade .bor or .openbor files.

### RAZE  

<img src="../../../raze-logo.png" width="75"> 

*Build‑engine based engine RAZE derived from ZDOOM (supports Duke Nukem, Redneck Rampage, Blood, etc.).*


### Ryubing

<img src="../../../ryubing-logo.webp" width="75"> 

*Ryujinx fork Ryubing.*

> **RetroDECK Team Comment:** Replacement for the semi‑broken Ryujinx legacy build. The old Ryujinx will be removed.


### ScummVM‑SA  

<img src="../../../scummvm-logo.svg" width="75">

*Full standalone version of the ScummVM engine.*

### ShadPS4  

<img src="../../../shadps4-logo.png" width="75"> 

*PlayStation 4 emulator ShadPS4.*


### SimCoupe  

<img src="../../../simcoupe-logo.png" width="75"> 


*SAM Coupé emulator SimCoupe.*

### SuperModel  

<img src="../../../supermodel-logo.webp" width="75"> 

*Sega Model 3 arcade emulator SuperModel.*


### VPinballX  

<img src="../../../vpinballx-logo.png" width="75"> 

*Virtual pinball engine (VP/VPin) VPinballX.*

> **RetroDECK Team Comment:**  If you have experience configuring VPinballX, please reach out to the team—we’d love your input on optimal settings.

### XRoar  

<img src="../../../xroar-tano64-logo.jpg" width="150">

*Dragon 32, Dragon 64, Tano Dragon, Tandy CoCo 1 & 2 emulator XRoar.*

---

## Anything Else You Are Working On?

### Storage folder

We are planning at least one new core‑system folder under **retrodeck/** called **storage**. 

The goal of the folder will house several types of misc user added data and expose some folders from the components there for ease of aceess.

These are our toughts so far:

- **Expose DLC / Updates Installations Paths** - For the components that have that.
- **Expose Plugins Paths** - Plugin folders that are not game mods.
- **Expose Other Assets** - Some components like MAME have several folders that can be put here like: gameover, ends, flyers and more.
- **DLC / Updates Storage** - A place where to put loose files.
- **Workable Writable Space** - Temporary or persistent writable areas (e.g., for the DOSBox‑X sandbox).

> **RetroDECK Team Note:** This probably will not might not make it into 0.10.0b. The exact structure of the folder will evolve as we gather feedback and identify further use‑cases. 

---

### Lahrs folder Icons

<img src="../../../intellivision.ico" width="75"> <img src="../../../logs.ico" width="75"> <img src="../../../mame.ico" width="75">  <img src="../../../megacdjp.ico" width="75"> 

The goal is that we in **RetroDeck 0.10.0b** ship community mod Lahrs custom folder icons for every RetroDeck folder. 

They will be enabled by default and the new icons should appear automatically after the update. 

There are plans to make a Configurator Tool to turn them on or off. 

> **RetroDECK Team Note:** We thank Lahrs for his tremendous effort creating specific icons for each folder.

---

### When?!

```
Mr. A User:
"Holy moley, RetroDECK Team! When can we get this update?"

RetroDECK Team:
"Well, as usual we give no ETA and we still have quite a bit to go."

Mr. A User:
"Fine… will all other components be updated as well with the update?"

RetroDECK Team:
"Yes."

Mrs. A User:
"Is there anything we can do to help?"

RetroDECK Team:
"All contributions are always welcome. If you want to help out with development, testing, community, or other things, feel free to do so, even if you're just curious on what is under the hood."
```


## That is all for now 

There are more things we are working on, but you will see them in future blog updates!

And as always if you want to help with development join the 💙-i-want-to-help channel on Discord.

Thanks everyone! 

//The RetroDECK Team 

---


### Links 

[retrodeck.net](https://retrodeck.net/)  
  
[Discord](https://discord.gg/WDc5C9YWMx) 

[Revolt](https://rvlt.gg/StVaEc0w) 

[Matrix](https://matrix.to/#/#retrodeck:matrix.org) 

[GitHub](https://github.com/XargonWan/RetroDECK) 

[Wiki](https://github.com/XargonWan/RetroDECK/wiki) 

[Donations](https://retrodeck.readthedocs.io/en/latest/wiki_about/donations-licenses/) 

[Lemmy](https://lemmy.zip/c/retrodeck) 
