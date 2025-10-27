--- 

date: 2025-10-31

--- 

# October 2025: Haunted Architectural Decisions

Lots of development focused RetroDECK 0.10.0b news. 

The RetroDECK Team have been hard at work. 

## Highlights

**News**

- Lahrs joined the Team
- SDHQ Podcast

**RetroDECK 0.10.0b - Status**

- component_extras.sh (name pending)
- Merger of component_libs and component_recipe
- Plugin‑Based Assembler
- Library Hunter & Gatherer
- Assembler Next Steps 

<!-- more -->

## Note: We have switched from Patreon to OpenCollective

**Read more here:** 

[Donations & Licenses](https://retrodeck.readthedocs.io/en/latest/wiki_about/donations-licenses/)


## Lahrs joined the Team

<img src="../astrocde.ico" width="75">

Lahrs has been an invaluable contributor to our RetroDECK for several months, consistently delivering high‑quality support, helping and overseeing the community. 

He have also created artistic assets, most notably his collection of custom folder icons.

We are pleased to formally welcome Lahrs to the team.

## SDHQ Podcast

<img src="../sdhq-holographic-logo.svg" width="100"> 

Some of the RetroDECK Team where invited to be guests at SDHQs Podcast.

Marvel at Xargons broken Italian-Japanese dialect as he tries to pronounce hard words such as "Firmware" and "Pay".

Enjoy Lazorne's stupid Swedish-Chinese antics and semi breaking microphone.

## RetroDECK 0.10.0b - Status

<img src="../icon-rd.svg" width="75"> 

RetroDECK 0.10.0b is advancing under the “Project Neo” umbrella it's very complex with tons of architectural discussions and changes. 

This is a tiny showcase on what we are working on so far. 

**Warning Technobabble!**

## component_extras.sh (name pending)

Some components require custom steps (patches, post‑install actions). Rather than embedding these in the main recipe, we retain a lightweight script that allows the core recipe declarative while allowing per‑component customisation.

We still have not decided the name for this as we want it to fit with the "cooking" lingo. 


Suggestions have been:

```
component

_additions.sh 
_additives.sh
_msg.sh (FUIYOH!)
_spice.sh (Must flow)
_garnish.sh 
_flavor.sh
_finish.sh (As in "finishing touch" not you Mr.Sauna....)
```


## Merger of component_libs and component_recipe

Previously we maintained two separate JSON files:

- component_libs.json – raw library listings
- component_recipe.json – build instructions

Both describe the same entities, so we now combine them into a single component_recipe.json. 

## Plugin‑Based Assembler

<img src="../alchemist.png">

The original assembler was monolithic. Refactoring it into a plugin system provides:


-  Extensibility: add support for new source layouts without modifying core code.
-  Maintainability: isolated plugins are easier to test and update.
-  Performance: independent plugins can run in parallel.


## Library Hunter & Gatherer

The Hunter & Gatherer scripts replaced the overly complex first POC Libman for easier library management ealier.

###  New Gatherer Behaviour

- Runtime libraries are copied into the unified hierarchy.
- Custom/AppImage libraries are copied to the exact destination you declare.
- Paths in source are stored relative to the directory where the hunter is executed, ensuring portability across CI agents and developer machines.

### Library Hunter Improvements

The hunter always records runtime_name and runtime_version for any library found in a runtime (Qt, GNOME, etc.). This removes the previous Qt‑only special case and makes the downstream processing runtime‑agnostic.

All runtime‑provided libraries follow a single hierarchy:


```

shared-libs/
└── <runtime-name>/
    └── <runtime-version>/
        └── <library>.so

```
        
Libraries not associated with a known runtime (e.g., bundled inside an AppImage) can be placed at the top level of shared-libs or in a custom specified sub‑folder. This standardised shared-libs hierarchy simplifies backend deduplication.


**Example**

```
  {
    "library": "libQt6Widgets.so.6",
    "runtime_name": "org.kde.Platform",
    "runtime_version": "6.9",
    "dest": "shared-libs"
  },
  {
    "library": "libgtk-4.so.1",
    "runtime_name": "org.gnome.Platform",
    "runtime_version": "44",
    "dest": "shared-libs"
  },
  {
    "library": "libaom.so.3",
    "source": "squashfs-root/usr/lib",
    "dest": "shared-libs"
  }


```

- Runtime libraries are automatically placed under shared-libs/<runtime>/<version>/.
- Non‑runtime libraries remain at the root of shared-libs (or another location you define).



### Resulting Component Directory Layout

If libaom.so.3 is marked as a unique, non‑runtime library (dest: "shared-libs"), the final artifact looks like:

```
azahar/
├── component_functions.sh
├── component_launcher.sh
├── component_libs.json
├── component_manifest.json
├── component_prepare.sh
├── component_recipe.json
├── rd_config/
│   └── qt-config.ini
└── shared-libs/
    ├── libaom.so.3                         ← unique, non‑runtime lib
    ├── org.gnome.Platform/
    │   └── 44/
    │       └── libgtk-4.so.1
    └── org.kde.Platform/
        └── 6.9/
            ├── libQt6Widgets.so → libQt6Widgets.so.6.9.3
            └── … (other Qt libs)

```

The shared-libs tree can be processed uniformly in the backend for deduplication, while component‑specific libraries remain isolated.

All components shared-libs are merged into the single shared-libs componment upon RetroDECK flatpak creation.

### Full Example: Combined component_recipe.json for Azahar


```

{
  "azahar": {
    "version": "latest",
    "type": "appimage",
    "source_url": "https://github.com/azahar-emu/azahar/releases/latest/download/azahar.AppImage",
    "archive": false,
    "gather_libs": true,
    "assets": {
      "binary": {
        "type": "dir",
        "source": "/usr/bin",
        "dest": "/bin"
      }
    },
    "libs": [
      {
        "library": "libQt6Widgets.so.6",
        "runtime_name": "org.kde.Platform",
        "runtime_version": "6.9",
        "dest": "shared-libs"
      },
      {
        "library": "libgtk-4.so.1",
        "runtime_name": "org.gnome.Platform",
        "runtime_version": "44",
        "dest": "shared-libs"
      },
      {
        "library": "libaom.so.3",
        "source": "squashfs-root/usr/lib",
        "dest": "shared-libs"
      }
    ],
    "extras": {
      "rd_config": {
        "type": "dir",
        "source": "/rd_config",
        "dest": "/rd_config"
      }
    }
  }
}

```

## Assembler Next Steps 

- Implement incremental updates for individual components.
- Extend the plugin ecosystem for containerised builds and cross‑architecture packaging.
- Add monitoring dashboards to visualise library reuse across components.



## That is all for now 

```
Meanwhile on RetroDECK Socials...

---

Mr. Average User: 
WOW... this was a lot of things I don't understand. 

Mrs. Angry User:
Listen, I don't care about all this tech junk. Just update now! 

Mrs. Tech User:
I use Arch BTW!

Thalin:
What will happen to RetroDECK?!

X Developer User:
Just redo everything in Rust?! GOSH!

Mr. Sauna:
Perkele


```

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
