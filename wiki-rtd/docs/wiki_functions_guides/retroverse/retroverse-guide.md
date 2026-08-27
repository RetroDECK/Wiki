# RetroVERSE

<img src="../../../wiki_icons/retrodeck/icon-retroverse.svg" width="75" alt="">

 *"The universe, ever-expanding, never-ending, inspiring and vast. From the smallest bug to the largest animal, all is small and all is equal."*

## What is it?

RetroVERSE is a curated repository of instructions and resources for sourcing external **components, assets and other data** for RetroDECK.

It is maintained by the RetroDECK Team and Community and follows the project's legal, licensing and scope guidelines. RetroVERSE provides **optional downloads** for resources that support the RetroDECK project but are not appropriate for inclusion as built-in components.

Conceptually, RetroVERSE is similar to an **app store** or projects such as **PortMaster**, allowing users to discover and download optional content independently of the core application.

However, RetroVERSE is **not an app store or PortMaster**. It is a purpose-built, curated resource repository designed specifically for RetroDECK. Resources downloaded through RetroVERSE integrate directly with the **RetroDECK Framework** and are handled by the framework in the same way as built-in internal components.

### RetroVERSE Rules

All resources available through RetroVERSE:

- Are **optional** and are not required for the core RetroDECK experience.
- Have a **strictly retro-focused and limited scope**, covering resources that do not need to be included in the core application.
- Can be **updated independently** of the RetroDECK core application.
- Must comply with all applicable **legal, copyright and licensing requirements**, as well as any additional guidelines established by the RetroDECK Team. Open-source content must comply with its applicable license. Proprietary code or assets require **explicit permission from the rights holder**.
- Are **curated by the RetroDECK Team and Community**. RetroVERSE is **not an unrestricted community repository**. The RetroDECK Team has final authority over which resources are accepted, maintained, or removed.

---

## What Content Can I See on RetroVERSE?

Most RetroDECK components and resources are **not stored directly in RetroVERSE**. Instead, they are retrieved from their official or authorized sources and processed by the **RetroDECK Assembler** and **RetroDECK Alchemist** using component or data files that contain the required instructions hosted on the RetroVERSE.

RetroVERSE primarily contains **external component files and data files** that define how a resource should be:

- Downloaded from its official or authorized source.
- Built or processed by RetroDECK.
- Installed and placed within the appropriate RetroDECK location.

RetroDECK's existing **component group classifications** also apply to all resources available through RetroVERSE.

---

## Data-Only Resources

In simple terms, **data-only resources provide simple instructions for obtaining and extracting files into a specific directory**. They are not full applications; they consist of simple files or a bundle of files. A resource can use **one or multiple sources**, but always produces **one defined output**. The format is intentionally rudimentary and simple, focusing only on retrieving the required files and placing them in the correct location.

Data-only resources are still classified according to their **`data_type`**. The majority will fall under either **Game** or **Art Resource**, depending on the type of content they provide.

For games downloaded through this method, the files are intended to be used with **RetroDECK's built-in components** rather than providing a standalone application or title. For example, the **Zork Trilogy** files are placed in the appropriate directory and they are played using a built-in **Emulator Component**, such as **RetroArch** or **Gargoyle**.

Examples include:

- **Open-source ROMS** - such as the Zork I, II and III ROMS for the zmachine.
- **Freely distributable game content** - such as DOOM shareware and Freedoom.
- **Art assets** - such as borders, overlays, backgrounds, and other artwork used by RetroDECK components.
- **Other supporting data** - any files that can be legally obtained or extracted from an authorized source and installed into a specific RetroDECK location.

From the user's perspective, the process can remain simple: 

RetroDECK presents an action such as **"Download Zork Trilogy"** or **"Download DOOM Shareware"**, while the RetroDECK Framework handles the downloading, extraction and placement of the required files automatically.

---

### Example - Data-Only Resources: Zork I, II, and III

Microsoft released the source code for **Zork I, II, and III** as open source. RetroVERSE can provide the required data files that define the official source locations, the files to retrieve, how they should be processed, where they should be installed, and how the feature should be presented in the RetroVERSE menu within RetroDECK.

From the user's perspective, this is presented as a simple **"Download Zork Trilogy"** action under the **Game** category in RetroVERSE. The RetroDECK Framework then handles the required download and extraction, placing the appropriate files in:

`retrodeck/roms/zmachine/`

RetroVERSE **does not host the Zork files itself**. Instead, the RetroDECK Framework uses the instructions provided by RetroVERSE to retrieve the required files from their official source.


**Official Sources**

- [Microsoft Open Source: Zork I, II, and III](https://opensource.microsoft.com/blog/2025/11/20/preserving-code-that-shaped-generations-zork-i-ii-and-iii-go-open-source/)
- [Zork I - Historical Source](https://github.com/historicalsource/zork1)
- [Zork II - Historical Source](https://github.com/historicalsource/zork2)
- [Zork III - Historical Source](https://github.com/historicalsource/zork3)

---

## Component Resources: External Components

**External Components** follow the RetroDECK development instructions for how they are obtained, built and integrated.

Components are **full applications** classified by `component_type` according to RetroDECK standards.

After the component files are downloaded from RetroVERSE, the **RetroDECK Alchemist** processes and builds them into a component artifact. The artifact is then extracted and loaded by the **RetroDECK Framework** on the next RetroDECK boot.

Once loaded, an External Component is treated as a **fully integrated RetroDECK component**, in the same way as built-in internal components.

Most Component Resources in RetroVERSE will likely fall into the following component categories:

- **Games**
- **Ports**
- **Engines**

They are installed under: 

```
retrodeck/storage/retrodeck/retroverse/<component_dir>
```

---

### Example 1 - VCMI

**VCMI** is an open-source engine for *Heroes of Might and Magic III*. It is classified as the **Port** because it only supports one game.

The VCMI component files hosted in RetroVERSE provide the **RetroDECK Alchemist** with the instructions required to obtain, build, package, and integrate VCMI from its official Flatpak on Flathub, as well as define how it should be presented in **ES-DE**. Once installed, VCMI is fully integrated into RetroDECK and follows the same component framework and directory structure as internal components and defines where to put the required *Heroes of Might and Magic III* game files and how it should be launched.

For more information about VCMI, see the official sources:

- [VCMI Official Website](https://vcmi.eu/)
- [VCMI on Flathub](https://flathub.org/en/apps/eu.vcmi.VCMI)

---

### Example 2 - OpenGOAL

**OpenGOAL**  is an open-source engine for first three *Jak and Daxter* games. It is classified as the **Engine** component type because it supports multiple games.

The OpenGOAL component files hosted in RetroVERSE provide the **RetroDECK Alchemist** with the instructions required to obtain, build, package and integrate OpenGOAL from its official **AppImage**, as well as define how it should be presented in **ES-DE**. Once installed, OpenGOAL is fully integrated into RetroDECK and follows the same component framework and directory structure as internal components and defines where to put the required *Jak and Daxter* game files and how they should be launched.

For more information:

- [OpenGOAL Official Website](https://opengoal.dev/)
- [OpenGOAL Installation Guide](https://opengoal.dev/docs/usage/installation/)


---

### Example 3 - Decompilation and Recompilation Projects

Many **decompilation and recompilation projects** for games across various retro consoles can be provided as full **External Components** under the **Port** category.

Examples can include projects targeting games from:

- **Nintendo 64**
- **GameCube**
- **Wii**
- **PlayStation**
- **PlayStation 2**
- **Dreamcast**
- **Nintendo DS**
- **Game Boy Advance**
- **Sega Saturn**
- **Sega Genesis / Mega Drive**

These projects can be obtained, built, packaged, and integrated into RetroDECK using the standard **External Component** workflow.

Once installed, they are fully integrated into RetroDECK and follows the same component framework and directory structure as internal components and defines where to put the required game files for each **Port** and how it should be launched.

---

### Example 4 - Fangames or Standalone Full Titles

Many **fangames and standalone titles** cannot be provided as Data-Only Resources because they are self-contained applications that include their own game runner and required files.

These can instead be provided as **External Components** when they include a distributable binary and everything required to run the game independently.

Unlike Data-Only Resources, these titles do not rely on a built-in RetroDECK component to run the game. They are packaged and integrated as a **complete application** through the standard **External Component** workflow and are classified as the **Game** component type. Once installed, the game is fully integrated into RetroDECK and follows the same component framework and directory structure and how it should be launched.

---





