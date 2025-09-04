--- 

date: 2025-09-08

--- 

# September 2025: Components, Components, Components!

Lots of development focused RetroDECK 0.10.0b news. 

The RetroDECK Team have been hard at work. 

## Highlights

- Development Status

<!-- more -->


## ImCoKeMaN & PM Team - Added more ports

<img src="../portmaster-logo.png" width="75"> 

Community member ImCoKeMaN have helped the PortMaster Team getting more X86_64 ports available and thus they are in RetroDECK.

So far about 30 new ports have been added.

We give ImCoKeMaN and the PortMaster Team our biggest thanks. 

## RetroDECK 0.10.0b - Status

<img src="../icon-rd.svg" width="75"> 

RetroDECK 0.10.0b is advancing under the “Project Neo” umbrella, that we first talked about in June.

We’re still addressing component‑specific issues, so the final release will take additional time and no ETAs. We’re rebuilding large portions of the application and its build pipeline from the ground up—making this effort feel more like **RetroDECK II** or **RetroDECK Neo**, which explains the project name.

We are doing a mix of:

- **Adding new and old components** to the new architecture and make them run. <- We are focused here currently.
- **Updating configuration files** for each component to align with the new structure. 
- **Adapt all** Configurator Tools and functions. 
- Conduct extensive **testing and bug‑fixing**.
- **Writing documentation** for the wiki.

We’re also integrating numerous new components, with the update’s focus centered on these enhancements.

---

## New Components Under Development

We’re experimenting with several components simultaneously. Some may be deferred to later updates if they prove too time‑consuming. The list below reflects our current status in cooker as of today (subject to change).

### Azahar  

<img src="../azahar-logo.svg" width="75"> 

*Nintendo 3DS emulator Azahar.*


### Dosbox‑X  

<img src="../dosbox-x-logo.webp" width="75"> 

*Standalone DOS emulator Dosbox‑X.*


### EKA2L1  

<img src="../eka2l1-logo.png" width="75"> 

*N‑Gage, N‑Gage II, and Symbian devices emulator EKA2L1.*



### Lindbergh Loader  

<img src="../lindbergh-loader-logo.png" width="75"> 

*SEGA Lindbergh arcade emulator Lindbergh Loader .*


### Flycast  

<img src="../flycast-logo.webp" width="75"> 

*Standalone emulator Flycast for the SEGA Dreamcast.*



### Mudlet  

<img src="../mudlet-logo.png" width="100"> 

*Mudlet the MUD client / Engine.*

> **RetroDECK Team Note:**  You will be able to directly connect to specific mud servers as seperate games in ES-DE with usermade .mud files.


### OpenBOR  

<img src="../openbor-logo.svg" width="100"> 

*Engine for OpenBOR games.*

> **RetroDECK Team Note:**  We have tried to add it before but it never did work quite right. But it works now with with usermade .bor or .openbor files.

### Ryubing

<img src="../ryubing-logo.webp" width="75"> 

*Ryujinx fork Ryubing.*

> **RetroDECK Team Note:**  Replacement for the semi‑broken Ryujinx legacy build. The old Ryujinx will be removed.

### SimCoupe  

<img src="../simcoupe-logo.png" width="75"> 


*SAM Coupé emulator SimCoupe.*

### ScummVM‑SA  

<img src="../scummvm-logo.svg" width="75">

*Full standalone version of the ScummVM engine.*

 

### VPinballX  

<img src="../vpinballx-logo.png" width="75"> 

*Virtual pinball engine (VP/VPin) VPinballX.*

> **RetroDECK Team Note:**  If you have experience configuring VPinballX, please reach out to the team—we’d love your input on optimal settings.

### XRoar  

<img src="../xroar-tano64-logo.jpg" width="150">

*Dragon 32, Dragon 64, Tano Dragon, Tandy CoCo 1 & 2 emulator XRoar.*

---

## Other Components

There are also other components that are not just in current cooker but we have experimented with.

### Ares  

<img src="../ares-logo.png" width="75"> 

*Multi‑emulator as an alternative to RetroArch.*

### Gargoyle  

<img src="../gargoyle-logo.webp" width="75"> 

*Interactive‑Fiction player Gargoyle (used primarily as a Infocom Z-machine emulator inside RetroDECK). It supports a wide range of interpreters: AdvSys, Agility, Alan 2/3, Bocfel, Git, Glulxe, Hugo, JACL, Level 9, Magnetic, Scare, ScottFree, TADS 2/3.*

### KEGS  

<img src="../kegs-apple2gs-logo.svg" width="150"> 

*Apple IIgs emulator KEGS.*

### RAZE  

<img src="../raze-logo.png" width="75"> 

*Build‑engine based engine RAZE derived from ZDOOM (supports Duke Nukem, Redneck Rampage, Blood, etc.).*

### ShadPS4  

<img src="../shadps4-logo.png" width="75"> 

*PlayStation 4 emulator ShadPS4.*

### SuperModel  

<img src="../supermodel-logo.webp" width="75"> 

*Sega Model 3 arcade emulator SuperModel.*

---

## Anything Else You Are Working On?

### Storage folder
We are planning a new core‑system folder under **retrodeck/** called **storage**. This folder will house several types of user added data:

- **DLC / Updates** - For the components that have that.
- **Plugins** - Plugin folders that are not game mods.
- **Specific Assets** - Some components like MAME have several folders that can be put here like: GameOver screens and more.   
- **Workable Writable Space** - Temporary or persistent writable areas (e.g., for the DOSBox‑X sandbox).  

> **RetroDECK Team Note:** This probably will not might not make it into 0.10.0b. The exact structure of the folder will evolve as we gather feedback and identify further use‑cases. 

### Lahrs folder Icons

Starting with **RetroDeck 0.10.0b**, we’ll ship custom Lahrs folder icons for every RetroDeck folder. 

They will be enabled by default and the new icons should appear automatically after the update. 

We also plan to make a Configurator Tool to turn them on or off. 


---

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
