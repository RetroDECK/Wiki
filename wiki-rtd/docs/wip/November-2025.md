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

## What has science done 

IceNine:

Pic 1

More advanced applications will need libraries that don't exist in any Flatpak-provided runtime, so they add their own "library layer" like this:


RetroDECK Classic looked like this:

Pic 2

But since the layers are squished together in the running Flatpak environment, the application sees both the runtime libraries and extra libraries in the same path, so you don't need to change how the application works internally.

But the problem here was that the library requirements for individual emulators kept getting farther and farther apart, and there is no way to handle the major differences, like between Qt5 and Qt6, in an environment like this because you can only have the one runtime. This is why we couldn't update to newer versions of some emulators (like PCSX2 I think), because updating the runtime to support that one would in turn break another.

So now we have this:

Pic 3

"With a common base runtime providing the "standard environment", along with additional common libraries and tools. On top of that is the "shared-libs" which is a common set of libraries available to all emulators, and on top of that we have customized environments for each individual emulator as needed, handled by changing the LD_LIBRARY_PATH etc. as needed.

So, effectively, we have built a Flatpak containing pre-extracted AppImage-like containers for every component.

But basically, if you draw a line from bottom to top through any given component, you get a concatenated view of everything that it "sees" when it runs, which is different for each emulator.

Kinda like building a docker container for each one right at runtime.

This absolutely has to be the most complicated Flatpak implementation in existence. Inspired by Docker and ostree."


### Links 

[retrodeck.net](https://retrodeck.net/)  
  
[Discord](https://discord.gg/WDc5C9YWMx) 

[Revolt](https://rvlt.gg/StVaEc0w) 

[Matrix](https://matrix.to/#/#retrodeck:matrix.org) 

[GitHub](https://github.com/XargonWan/RetroDECK) 

[Wiki](https://github.com/XargonWan/RetroDECK/wiki) 

[Donations](https://retrodeck.readthedocs.io/en/latest/wiki_about/donations-licenses/) 

[Lemmy](https://lemmy.zip/c/retrodeck) 
