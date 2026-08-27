# RetroVERSE

<img src="../../../wiki_icons/retrodeck/icon-retroverse.svg" width="75" alt="">

 *"The universe, ever-expanding, never-ending, inspiring and vast. From the smallest bug to the largest animal, all is small and all is equal."*

## What is it?

**RetroVERSE** is a curated repository of instructions and resources for sourcing external **Components, assets, and other data** for RetroDECK.

It is maintained by the **RetroDECK Team and Community** and follows the project's legal, licensing and scope guidelines. RetroVERSE provides **optional downloads** for resources that support RetroDECK but are not suitable for inclusion as built-in Components. These resources are published through **RetroVERSE Releases**.

Conceptually, RetroVERSE is similar to an **app store** or projects such as **PortMaster**, allowing users to discover and download optional content independently of the core application.

However, RetroVERSE is **not an app store or PortMaster**. It is a purpose-built, curated resource repository designed specifically for RetroDECK.

Resources provided through RetroVERSE integrate directly with the **RetroDECK Framework**. The framework handles these resources using the same underlying mechanisms as built-in Components and files.

### RetroVERSE Rules

All resources available through RetroVERSE:

- Are **optional** and are not required for the core RetroDECK experience.
- Have a **strictly retro-focused and limited scope**, covering resources that do not need to be included in the core application.
- Can be **updated independently** of the RetroDECK core application.
- Must comply with all applicable **legal, copyright and licensing requirements**, as well as any additional guidelines established by the RetroDECK Team. Open-source content must comply with its applicable license. Proprietary code or assets require **explicit permission from the rights holder**.
- Are **curated by the RetroDECK Team and Community**. RetroVERSE is **not an unrestricted community repository**. The RetroDECK Team has final authority over which resources are accepted, maintained, or removed.

---

## What Content Can I See on RetroVERSE?

RetroVERSE follows a process similar to the **RetroDECK Component Build Chain**. Resources are retrieved from their official or authorized sources and processed by the **RetroDECK Assembler** and **RetroDECK Alchemist** to produce **RetroVERSE Releases**.

Users can then download and install these releases to update their installed Components and Data Tidbits.

RetroVERSE primarily contains **External Component** files and **Data Tidbit** definitions that specify how a resource should be:

- Downloaded from its official or authorized source.
- Built or processed by RetroDECK.
- Installed and placed in the appropriate RetroDECK location.

RetroVERSE uses RetroDECK's existing **Component group classifications** and **Data Tidbit group classifications** to organize resources into categories on RetroVERSE.

This makes it easier for users to discover and find the content they are looking for.

### Matching Types

If a **Data Tidbit `tidbit_type`** and a **Component `component_type`** match, they are presented together in the same RetroVERSE category.

**For example two Games:**

```
"component_type": "Game", <--- The component game. 
"tidbit_type": "Game" <--- A tidbit game.
```

Both are presented under the **Games** category.

From the user's perspective, how the game is sourced or implemented does not matter. An open-source ROM, fangame, or standalone game is simply a **game**.

This keeps the RetroVERSE interface focused on **what users are looking for**, rather than how the resource is implemented internally.


---

## External Data Resources: Data Tidbits

**Data Tidbits** are exclusive to the RetroVERSE. They are separate from **Components** and are intended to provide data *consumed* by RetroDECK's internal components.

A Data Tidbit defines how required files are obtained, extracted and placed in a specific RetroDECK directory. It is not a standalone application as a component. A Data Tidbit may use **one or more sources**, but always produces **one defined output**.

The format is intentionally simple and focused on:

- Retrieving the required files.
- Extracting or processing them when necessary.
- Placing the resulting files in the defined RetroDECK location.

### Tidbit Types

Data Tidbits are classified using **`tidbit_type`**, which is equivalent to a Component's **`component_type`**.

The available data types generally correspond to the RetroDECK directory structure. Additional data types may be introduced over time as new resource categories are supported.

- **Borders** - External borders installed under `retrodeck/borders/<component_borders_dir>`.

- **Cheats** - External cheat databases installed under `retrodeck/cheats/<component_cheats_dir>`.

- **Game** - Game content that can be used by a built-in Component. This may include fan-made or open-source ROMs, homebrew games, or fan games that can be launched through a supported engine.

- **Misc** - Other supporting data that does not fit into the categories above. Depending on its purpose, this may be installed under `retrodeck/storage/<component_storage_dir>` or another Component-specific location.

- **Mods** - Mod files installed under `retrodeck/mods/<component_mods_dir>` or `retrodeck/roms/<system_dir>`, depending on the requirements of the target Component or system.

- **Overlays** - External overlays installed under `retrodeck/overlays/<component_overlay_dir>`.

- **Shaders** - Shader resources installed under `retrodeck/shaders/<component_shader_dir>`.

**Examples of Data Tidbits**

- **Cheats** - An external MelonDS cheat database.
- **Freely distributable game content** - Such as DOOM shareware and Freedoom for DOOM.
- **Open-source ROMs** - Such as the Zork I, II, and III game files for the Z-machine.

### How It Works

From the user's perspective, the process remains simple. RetroDECK can present an action such as **Download Zork Trilogy** or **Download DOOM Shareware**.

The process is handled automatically through the **RetroDECK Framework**:

1. A **Data Tidbit** is added to the RetroVERSE repository with its required instructions.
2. A **RetroVERSE Release** is built from the Data Tidbit.
3. The user downloads the Data Tidbit through RetroDECK.
4. The RetroDECK Framework follows the Data Tidbit's instructions to extract and put the required files in a location.
5. The resulting data is made available to the appropriate built-in **Component**.

This keeps **Data Tidbits** focused on **providing data**, while **Components** remain responsible for **using that data**.


---

### Example - Data-Only Resources: Zork I, II, and III

Microsoft released the source code for **Zork I, II, and III** as open source.

In RetroVERSE the Data Tidbit of "The Zork Trilogy" instructs how to download Zork I, II, and III from official source locations, the files to retrieve, how they should be processed, where they should be put and how the feature should be presented in the RetroVERSE menu within RetroDECK.

From the user's perspective, this is presented as a simple **"Download Zork Trilogy"** action under the **Games** category in RetroVERSE. The RetroDECK Framework then handles the required download and extraction from a **RetroVERSE Release**, placing the appropriate files in:

`retrodeck/roms/zmachine/`

They can then be used by a built-in **Emulator Component**, such as RetroArch or Gargoyle.

**Official Sources**

- [Microsoft Open Source: Zork I, II, and III](https://opensource.microsoft.com/blog/2025/11/20/preserving-code-that-shaped-generations-zork-i-ii-and-iii-go-open-source/)
- [Zork I - Historical Source](https://github.com/historicalsource/zork1)
- [Zork II - Historical Source](https://github.com/historicalsource/zork2)
- [Zork III - Historical Source](https://github.com/historicalsource/zork3)

---

## Component Resources: External Components

**External Components** follow the same RetroDECK development instructions and standards for how they are obtained, built, and integrated.

Components are **full applications** classified using `component_type` according to RetroDECK standards.

External Components in RetroVERSE are built using the same process as built-in RetroDECK Components. When downloaded, they are extracted and loaded by the **RetroDECK Framework** during the next RetroDECK boot.

Once loaded, an External Component is treated as a **fully integrated RetroDECK Component**, just like a built-in Component.

Most External Components in RetroVERSE will likely fall into the following categories:

- **Games**
- **Ports**
- **Engines**

External Components are installed under:

```
retrodeck/storage/retrodeck/retroverse/<component_dir>
```

---

### Example 1 - VCMI

**VCMI** is an open-source engine for *Heroes of Might and Magic III*. It is classified as the **Port** because it only supports one game.

Once installed, VCMI is fully integrated into RetroDECK and follows the same component framework and directory structure as internal components and defines where to put the required *Heroes of Might and Magic III* game files and how it should be launched.

For more information about VCMI, see the official sources:

- [VCMI Official Website](https://vcmi.eu/)
- [VCMI on Flathub](https://flathub.org/en/apps/eu.vcmi.VCMI)

---

### Example 2 - OpenGOAL

**OpenGOAL**  is an open-source engine for first three *Jak and Daxter* games. It is classified as the **Engine** component type because it supports multiple games.

Once installed, OpenGOAL is fully integrated into RetroDECK and follows the same component framework and directory structure as internal components and defines where to put the required *Jak and Daxter* game files and how they should be launched.

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

Once installed, they are fully integrated into RetroDECK and follows the same component framework and directory structure as internal components and defines where to put the required game files for each **Port** and how it should be launched.

---

### Example 4 - Fangames or Standalone Full Titles

Many **fangames and standalone titles** cannot be provided as Data Tidbits because they are self-contained applications that include their own game runner and required files.

These can instead be provided as **External Components** when they include a distributable binary and everything required to run the game independently.

Unlike Data Tidbits, these titles do not rely on a component to run the game. They are packaged and integrated as a **complete application** and are classified as the **Game** component type. 

Once installed, the game is fully integrated into RetroDECK and follows the same component framework and directory structure and how it should be launched.

---





