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

---

## Note: We have switched from Patreon to OpenCollective

**Read more here:** 

[Donations & Licenses](https://retrodeck.readthedocs.io/en/latest/wiki_about/donations-licenses/)

---

## What has science done: A fatpak

<img src="../fatpak.jpg" width="500"> 

**RetroDECK 0.10.0b - Dastadly Dansband**

Is a total rewrite of how RetroDECK is made. 

Let us explain what we have created and why it has taken us so long.

---

### Simple flatpak

<img src="../flatpak.drawio.png" width="250"> 

This is a simple flatpak

- The application has all the things it needs in the Flatpak Runtime.

---

### Advanced flatpak

<img src="../flatpakadv.drawio.png" width="250"> 

This is a more advanced flatpak

- The application needs to add additional libraries in addition to what is in the Flatpak Runtime. We internally call it the "library layer". 

---

### RetroDECK Classic

<img src="../flatpakrdclassic.drawio.png" width="250"> 

This is RetroDECK 0.9.4 and all older versions.

- The application relied solely on the libraries provided by the Flatpak runtime. 
- This model forced a single runtime to serve all components, regardless of their divergent library requirements.
- As individual components evolved, their library dependencies diverged significantly most notably the transition from Qt 5 to Qt 6 . 
- Because a Flatpak can host only one runtime, updating the runtime to satisfy a newer component (e.g., PCSX2) would inevitably break compatibility with others that depend on older libraries. 
- This incompatibility prevented us from upgrading several components to their latest releases in a easy maner and often required manual patches or custom builds.

---

### RetroDECK "New"

<img src="../flatpakrdneo.drawio.png" width="250"> 

This is RetroDECK 0.10.0b and future versions. 

This was inspired by Docker and OSTree. 

1. **Base Runtime** – Provides a stable, standard execution environment common to all parts, but it can be diverged if needed by components. 
2. **Libraries Layer** – A curated collection of libraries and tools that are universally required across components.
2. **Component Shared Libraries Layer** – A curated collection of libraries that are component specific but can be shared with other components, thus saving space. 
4. **Component Specific Libraries Layer** – Unique special libraries that are only bound to that component and can not be shared. 
5. **Component Applications** - The binaries are within their own little environment. 
6. **RetroDECK** - RetroDECK application at the top calling various components, layers and functions. 

When traversing from the base runtime upward through a component’s flow from the Host OS to RetroDECK, the resulting view for that component reflects a concatenated set of libraries and dependencies specifically for that component (it only see what it wants to see).

Effectively, each component are isolated within their own environment kinda like AppImage‑style sandboxed pre‑extracted, containers for every component that runs within a Flatpak total environment. 

It's kinda like building a docker container for each component right at runtime.

**Benefits**

- **Isolation:** Each component receives precisely the libraries it needs without affecting others. 
- **Flexibility:** Newer components can be integrated by adding or adjusting only their custom layers, leaving the base runtime untouched. 
- **Scalability:** The architecture makes it much easier to add more components, keeping them updated and isolated.

### RetroDECK Alchemist: Independent Component Builds

Thanks to the RetroDECK Alchemist pipeline introduced in last month’s blog post, each component is now compiled **independently** from its official sources. RetroDECK merely pulls these finished artifacts into its own build process as sub‑modules.

The result is a fully **modular** architecture that remains packaged within a single Flatpak preserving the *one button install and everything is included approach* that people love and what RetroDECK is.

### RetroDECK API

As outlined in an earlier blog post, a the new of RetroDECK API is superseding several legacy functions. The configurator has been refactored to align with this modular paradigm; it now assembles itself dynamically based on the components detected at runtime.

Looking ahead, we plan to leverage these modern APIs to develop a next‑generation RetroDECK Configurator built in **Godot**, further enhancing extensibility and user experience.

### A fatpak

*"This absolutely has to be the most complicated Flatpak implementation in existence."* 

//IceNine - RetroDECK Team

*"A fatpak!"* 

//Lazorne - RetroDECK Team

---

## That is all for now 

There are more things we are working on, but you will see them in future blog updates!

And as always if you want to help with development join the 💙-i-want-to-help channel on Discord.

Thanks everyone! 

//The RetroDECK Team 

### Links 

[retrodeck.net](https://retrodeck.net/)  
  
[Discord](https://discord.gg/WDc5C9YWMx) 

[Stoat](https://rvlt.gg/StVaEc0w) 

[GitHub](https://github.com/XargonWan/RetroDECK) 

[Wiki](https://github.com/XargonWan/RetroDECK/wiki) 

[Donations](https://retrodeck.readthedocs.io/en/latest/wiki_about/donations-licenses/) 

[Lemmy](https://lemmy.zip/c/retrodeck) 
