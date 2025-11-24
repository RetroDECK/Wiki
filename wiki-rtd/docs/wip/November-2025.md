--- 

date: 2025-11-26

--- 

# November 2025:  Finally a fatpak

Lots of development focused RetroDECK 0.10.0b news. 

The RetroDECK Team have been hard at work. 

We also wish you a 🦃 Happy Thanksgiving 🦃 for those that celebrate it.

## Highlights

**News**

- Testing has started
- What has science done


<!-- more -->

## Note: We have switched from Patreon to OpenCollective

**Read more here:** 

[Donations & Licenses](https://retrodeck.readthedocs.io/en/latest/wiki_about/donations-licenses/)

## What has science done: A fatpak

<img src="../fatpak.jpg" width="500"> 

**RetroDECK 0.10.0b - Dastadly Dansband**

Is a total rewrite of how RetroDECK is made. 

Let us explain what we have created. 


### Simple flatpak

<img src="../flatpak.drawio.png" width="250"> 

This is a simple flatpak

- The application has all the things it needs in the Flatpak Runtime.

### Advanced flatpak

<img src="../flatpakadv.drawio.png" width="250"> 

This is a more advanced flatpak

- The application needs to add additional libraries in addition to what is in the Flatpak Runtime. We internally call it the "library layer". 


### RetroDECK Classic

<img src="../flatpakrdclassic.drawio.png" width="250"> 

### RetroDECK "New"

<img src="../flatpakrdneo.drawio.png" width="250"> 

### Flatpak‑Based Library Layering for Advanced Components

Modern components like RPCS3 often require libraries that are unavailable in any of the standard Flatpak runtimes. To accommodate these dependencies, developers introduce a custom “library layer” that supplements the runtime environment.

### Legacy Approach – RetroDECK Classic

In earlier implementations the application relied solely on the libraries provided by the Flatpak runtime. While functional, this model forced a single runtime to serve all components, regardless of their divergent library requirements.

As individual components evolved, their library dependencies diverged significantly most notably the transition from Qt 5 to Qt 6. Because a Flatpak can host only one runtime, updating the runtime to satisfy a newer component (e.g., PCSX2) would inevitably break compatibility with others that depend on older libraries. This incompatibility prevented us from upgrading several components to their latest releases.

### Current Architecture

Our solution (illustrated in Figure 2) introduces a multi‑tiered environment:

1. **Base Runtime** – Provides a stable, standard execution environment common to all parts. 
2. **Shared Libraries** – A curated collection of libraries and tools that are universally required across components. 
3. **Per‑Component Custom Layers** – Individualized environments that adjust `LD_LIBRARY_PATH` (and related variables) to inject component‑specific libraries.

Effectively, each component runs within a Flatpak that bundles pre‑extracted, AppImage‑style containers for every necessary part. When traversing from the base runtime upward through a component’s stack, the resulting view reflects a concatenated set of libraries tailored specifically for that component.

### Benefits

- **Isolation:** Each component receives precisely the libraries it needs without affecting others. 
- **Flexibility:** Newer components can be integrated by adding or adjusting only their custom layers, leaving the base runtime untouched. 
- **Scalability:** The architecture is inspired by the modularity of Docker containers and OSTree.

This layered strategy represents arguably the most sophisticated Flatpak implementation to date, drawing inspiration from Docker’s containerization principles while preserving the security and distribution advantages inherent to Flatpak.
---

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
