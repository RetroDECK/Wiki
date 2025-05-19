# Development Glossary 

Here we are listing the lingo of the RetroDECK Project.

## RetroDECK Publication Process 

Feature Branches -> Cooker (GitHub) -> Main (GitHub) -> Main (GitHub) Pre-Release Testing ->  Flathub Testing -> Flathub Publication.

## RetroDECK Releases

A version of RetroDECK is only considered released when it is published on Flathub.

https://flathub.org/apps/net.retrodeck.retrodeck

## RetroDECK Github: Main / Main Releases

The main repo of the RetroDECK Project.

Is contains the feature freezed stable releases of the RetroDECK Application. 

All releases here are considered as Pre-Releases, the full release is always on Flathub.

## RetroDECK Github: Cooker / Cooker Releases

The cooker repo of the RetroDECK Project.

Cooker is RetroDECK's bleeding edge "nightly" releases. 

Done feature branches get merged into cooker.

## RetroDECK feat/ branches

The feature rep of the RetroDECK Project.

## RetroDECK API

## RetroEngine

## Ponzu

## Components

### Internal vs External components

- External components are stored within the external component space within writable userspace. `/app/retrodeck/components/<component name>/`

- Internal components, such as RetroDECK itself will also have manifest.json files, which contain any related information used in menus or API data gathering. As most internal components won't support things like presets, they will generally be shorter than actual emulator components.

## Components Recipe Files

**What are Components Recipe Files?**

The packaged files with a RetroDECK component are the information center for that component made from various scripts and json files. 

They will contain human-friendly information shown in menus, actions to be taken when changing presets, per-component one-off Bash functions, config file path information and more. 

As these files are read in an iterative way by the code, it is imperative that their structure be correct.



### What are the four component Recipe files?

These files will be stored along side the rest of the component data in specific location.

Currently this location is `/app/retrodeck/components/<component name>/` but can be changed in the future.

The following four files are required by every component:

- **manifest.json** - JSON file containing general information about the component, preset and menu compatibility, preset action information, core information (as applicable).

- **functions.sh** - A Bash file containing config file paths (the kind previously found in the global.sh library) and defined functions relating to the component. If the component has a function that is specific to it, such as installing firmware or advanced functions found in the Configurator menus, they should be here.

- **prepare_component.sh** - A Bash file containing the segment of code formerly found in the prepare_component.sh core library. The structure is identical, and the code is used for performing actions on the component like resets and folder moves.

- **component_launcher.sh** - A Bash file acting as a launcher wrapper for the component. Settings will include changing environmental variables etc. or whatever else is needed to launch the component in the sub-sandbox setup.

