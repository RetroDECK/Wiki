

### Step X: Prepare the component_launcher.sh wrapper (Ingredient File)

**Read more here:** 

- [component_launcher.sh](ing-component-launcher.md)


### Step X: Test run of component_launcher.sh 

1. Run: `flatpak run --command=bash net.retrodeck.retrodeck`
2. Then from the terminal shell try to run your newly created `component_launcher.sh`

**Read more here:**

### Step X: Prepare the Metadata (Ingredient Files)

**Read more here:** 

- [component_functions.sh](ing-component-functions.md)

- [component_manifest.json](ing-component-manifest.md)

- [component_prepare.sh](ing-component-prepare.md)

### Step X: Tweak Configurations

Configure initial component settings to make sure controls work, performance is good on Steam Deck etc. When done, the components config file will become the shipped "RetroDECK defaults" config.,

### Step X: Write the recipe.sh Build File

**Read more here:** 

- [recipe.sh](component-recipe.md)

### Step X: Compress the Artifact

Bundle everything together:

```
tar -czf "component-artifact.tar.gz" "component"
```

Then PR it to the [RetroDECK/components](https://github.com/RetroDECK/components).


### Step X: Assemble the Release

The `RetroDECK Assembler` building process follows the recipe.sh and builds the artifact with the ingredients files into:

[RetroDECK/components/releases](https://github.com/RetroDECK/components/releases) 


### Step X: Into the Cooker

The `RetroDECK Assembler` will take the finished component artifacts and they becomes part of the:

[RetroDECK: Cooker Branch](https://github.com/RetroDECK/RetroDECK/tree/cooker) and published to the [RetroDECK/Cooker](https://github.com/RetroDECK/Cooker) repository. 

At this stage the RetroDECK Community Beta (Taste) Testers and the RetroDECK Team will check for bugs, tweak configurations, give feedback and more. Until it leaves cooker into a Stable Release of RetroDECK.



## TODO / Ask Tweedledee and Tweedledum 

To answer the "How-to add a component to RetroDECK" 

We also need to go into how to modify the ES-DE file and other things.

We need to answer:

- How-to make it showup in ES-DE in general. 
- How-to: add an component that is already supported by ES-DE? (Just remove the #) 
- How-to: add an component that is NOT supported by ES-DE? It needs new folders? How does folder creation work in ES-DE?
- How-to: add an component needs a custom format or wrapper like GZDoom and have it work in ES-DE?
- How-to: add a launch able port script under  roms/ports like PortMaster or other ports we want to include. 
- How-to: Edit configurations to setup folders and what do look out for? (How does $RDHome work?)
- IF that is not possible how to create the symlinks when RetroDECK is installed.
- How-to: Expose config files, caches and folders into the userspace /home/<user>/.var/app/net.retrodeck.retrodeck/


Structure the new component application files as they would be when unpacked from a component artifact (.../retrodeck/components/<component name>/bin, lib and share folders etc. as needed.
Create component_launcher.sh script and verify that component can launch properly when run through the launcher script while inside the flatpak (flatpak run --command=bash net.retrodeck.retrodeck)

Close, I'll clarify a little. I guess it doesn't really matter where the <component name> folder is, as long as it is somewhere accessible to the Flatpak (which is pretty much anywhere right now). I've just been putting it in the Flatpak files (what would be the RO space when the Flatpak is running) for my own testing. That location differs depending on if the Flatpak is installed in user mode or not. The <component name> folder could just as easily be in $HOME. The structure of the folders inside the <component name> folder will depend completely on what the component needs. It should always have a "bin" folder where the binary will be, for consistency. It will only need a "lib" folder if the component needs libraries that are not included in the Flatpak runtime. There may not be a "share" folder either, if the component doesn't use one. All this depends on how the component was written, and needs to be evaluated on a per-component basis. Generally, if the component is coming from an AppImage, whatever structure is used in the AppImage will also work in the <component name> folder as well, but not always. I have been determining if the component needs extra libraries by trying to launch it from inside the Flatpak and see if it complains about missing libraries or otherwise fails to launch. Find the missing libraries (I've been pulling them from other Flatpak runtimes and making a note of what I pulled) and include them in the "lib" folder. Making sure to launch from the component wrapper (which will update the LD_LIBRARY_PATH env var), just keep doing that until the component runs.

Unfortunately there in no "one size fits all" process for this, because each components needs are a little bit different. But ultimately we are determining what structure and files need to be included in the <component name> folder for it to be able to launch.
[5:06 PM]IceNine451 | RetroDECK 🇺🇸(EST): I guess I should clarify that the <component name> folder can be anywhere for testing if the component launches, for testing if things like the manifest menu entries work it will need to be in the correct specific location.
