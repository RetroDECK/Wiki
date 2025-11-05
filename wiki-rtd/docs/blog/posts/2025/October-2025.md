--- 

date: 2025-10-31

--- 

# October 2025: Haunted Architectural Decisions

Lots of development focused RetroDECK 0.10.0b news. 

The RetroDECK Team have been hard at work. 

We also wish you a 🎃 Happy Halloween 🎃 for those that celebrate it.

## Highlights

**News**

- Lahrs joined the Team

**RetroDECK 0.10.0b - Status**

- Merger of component_libs and component_recipe
- RetroDECK Alchemist: Plugin‑Based Component Assembler
- Library Hunter & Gatherer
- Next Steps 

<!-- more -->

## Note: We have switched from Patreon to OpenCollective

**Read more here:** 

[Donations & Licenses](https://retrodeck.readthedocs.io/en/latest/wiki_about/donations-licenses/)


## Lahrs joined the Team

<img src="../../../astrocde.ico" width="75">

Lahrs has been an invaluable contributor to our RetroDECK for several months, consistently delivering high‑quality support, helping and overseeing the community. 

He have also created artistic assets, most notably his collection of custom folder icons.

We are pleased to formally welcome Lahrs to the team.


## RetroDECK 0.10.0b - Status

<img src="../../../icon-rd.svg" width="75"> 

RetroDECK 0.10.0b is advancing under the “Project Neo” umbrella it's very complex with tons of architectural discussions and changes. 

This is a tiny showcase on what we are working on so far. 

**Warning Technobabble!**



### Merger of component_libs and component_recipe

<img src="../../../icon-component.svg" width="75">

Previously we maintained two separate two files:

- component_libs.json – raw library listings
- recipe.sh – build instructions

Both describe the same entities, so we now combine them into a single component_recipe.json. 

Several new arguments have also been added one being the **"extras":** (name pending).

We still have not decided the name for this as we want it to fit with the "magical cooking" lingo. 


**Suggestions have been:**

```
"additions"
"additives"
"msg" (FUIYOH!)
"spice" (Must flow)
"garnish" 
"flavor"
"finish" (As in "finishing touch" not you Mr.Sauna...)
"extras" (Just stick with it!)
```

#### Full Example: Combined component_recipe.json for Azahar


```
{
  "azahar": [
    {
      "source_url": "org.azahar_emu.Azahar",
      "source_type": "flatpak_id",
      "version": "$AZAHAR_DESIRED_VERSION",
      "dest": "user",
      "extraction_type": "flatpak",
      "assets": [
        {
          "type": "dir",
          "source": "usr/bin",
          "dest": "bin"
        }
      ],
      "libs": [
        {
          "library": "libQt6Widgets.so.6",
          "runtime_name": "org.kde.Platform",
          "runtime_version": "6.9",
          "dest": "shared-libs"
        },
        {
          "library": "libQt6Gui.so.6",
          "runtime_name": "org.kde.Platform",
          "runtime_version": "6.9",
          "dest": "shared-libs"
        },
        {
          "library": "libQt6Core.so.6",
          "runtime_name": "org.kde.Platform",
          "runtime_version": "6.9",
          "dest": "shared-libs"
        },
        {
          "library": "libQt6Multimedia.so.6",
          "runtime_name": "org.kde.Platform",
          "runtime_version": "6.9",
          "dest": "shared-libs"
        },
        {
          "library": "libQt6Network.so.6",
          "runtime_name": "org.kde.Platform",
          "runtime_version": "6.9",
          "dest": "shared-libs"
        },
        {
          "library": "libQt6DBus.so.6",
          "runtime_name": "org.kde.Platform",
          "runtime_version": "6.9",
          "dest": "shared-libs"
        },
        {
          "library": "libQt6Concurrent.so.6",
          "runtime_name": "org.kde.Platform",
          "runtime_version": "6.9",
          "dest": "shared-libs"
        }
      ],
      "extras": [
        {
          "type": "dir",
          "source": "$REPO_ROOT/$COMPONENT_NAME",
          "dest": "$COMPONENT_ARTIFACT_ROOT"
        }
      ]
    }
  ]
}
```

### RetroDECK Alchemist: Plugin‑Based Component Assembler


<img src="../../../icon-alchemist.svg" width="75">

The original assembler was monolithic. Refactoring it into a plugin system provides:

-  Extensibility: add support for new source layouts without modifying core code.
-  Maintainability: isolated plugins are easier to test and update.
-  Performance: independent plugins can run in parallel.

[Read more here](https://retrodeck.readthedocs.io/en/latest/wiki_development/components/alchemist/component-alchemist-guide/)

### Library Hunter & Gatherer

<img src="../../../icon-hunter.svg" width="75"> 

The Hunter & Gatherer scripts replaced the overly complex first POC Libman for easier library management ealier.

####  New Gatherer Behavior

- Runtime libraries are copied into the unified hierarchy.
- Custom/AppImage libraries are copied to the exact destination you declare.
- Paths in source are stored relative to the directory where the hunter is executed, ensuring portability across CI agents and developer machines.

#### Library Hunter Improvements

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



#### Resulting Component Directory Layout

If libaom.so.3 is marked as a unique, non‑runtime library (dest: "shared-libs"), the final artifact looks like:

```
azahar/
├── component_functions.sh
├── component_launcher.sh
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



##  Next Steps 

<img src="../../../icon-framework.svg" width="75"> 

### Assembler

- Implement incremental updates for individual components.
- Extend the plugin ecosystem for containerised builds and cross‑architecture packaging.
- Add monitoring dashboards to visualise library reuse across components.

### Development 

- Start making new recipe & ingredient files
- Put everything together. 
- Tons of testing by our panel of expert community taste testers.
- Serve


## That is all for now 

```
Meanwhile on RetroDECK Socials...

---

Mr. Average User: 
WOW... this was a lot of things I don't understand. 

Mrs. Angry User:
Listen, I don't care about all this tech junk. Just update now! 

Mr. Angry at User User:
Stop pestering the devs! *Insert rule breaking language here*

Mrs. Tech User:
I use Arch BTW!

Thalin:
What will happen to RetroDECK?!

X Developer User:
Just redo everything in Rust! GOSH!

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
