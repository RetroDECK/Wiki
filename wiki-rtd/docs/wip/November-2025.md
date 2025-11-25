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
- What has science done: A fatpak?
- RetroDECK 0.10.0b - What is in it and what is not?
- Important: On Ponzu
- What's new?


<!-- more -->

---

## Note: We have switched from Patreon to OpenCollective

**Read more here:** 

[Donations & Licenses](https://retrodeck.readthedocs.io/en/latest/wiki_about/donations-licenses/)

---

## What has science done: A fatpak?

<img src="../fatpak.jpg" width="500"> 

**RetroDECK 0.10.0b - Dastadly Dansband**

Is a total rewrite of how RetroDECK is made under the pseudonym/codename: "Project Neo".  

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

It was inspired by Docker and OSTree. 

1. **Base Runtime** – Provides a stable, standard execution environment common to all parts, but it can be diverged if needed by components. 
2. **Libraries Layer** – A curated collection of libraries and tools that are universally required across components.
2. **Component Shared Libraries Layer** – A curated collection of libraries that are component specific but can be shared with other components, thus saving space. 
4. **Component Specific Libraries Layer** – Unique special libraries that are only bound to that component and can not be shared. 
5. **Component Applications** - The binaries are within their own little environment. 
6. **RetroDECK** - RetroDECK application at the top calling various components, layers and functions. 

When traversing from the base runtime upward through a component’s flow from the Host OS to RetroDECK, the resulting view for that component reflects a concatenated set of libraries and dependencies specifically for that component (it only sees what it needs to see).

Effectively, each component are isolated within their own environment kinda like AppImage‑style sandboxed pre‑extracted, containers for every component that runs within a Flatpak total environment. 

It's kinda like spinning up a docker container from a premade set of interchangeable layers for each component at the moment it runs.

**Benefits**

- **Isolation:** Each component receives precisely the libraries it needs without affecting others from either or both shared-libraries and component specific libraries. 
- **Flexibility:** Newer components can be integrated by adding or adjusting only their custom layers, leaving the base runtime untouched. 
- **Scalability:** The architecture makes it much easier to add more components, keeping them updated and isolated.

### RetroDECK Alchemist: Independent Component Builds

Thanks to the RetroDECK Alchemist pipeline introduced in last month’s blog post, each component is now constructed **independently** from its official sources. RetroDECK merely pulls these finished artifacts into its own build process as sub‑modules via our own Component Recipe and Component Ingredient files (also in a past blog post).

The result is a fully **modular** architecture that remains packaged within a single Flatpak preserving the *one button install and everything is included approach* that people love and what RetroDECK is.

### RetroDECK API

As outlined in an earlier blog post, a the new of RetroDECK API is superseding several legacy functions. The configurator has been refactored to align with this modular paradigm; it now assembles itself dynamically based on the components detected at runtime.

Looking ahead, we plan to leverage these modern APIs to develop a next‑generation RetroDECK Configurator built in **Godot**, further enhancing extensibility and user experience.

### A fatpak

```
"This absolutely has to be the most complicated 
Flatpak implementation in existence."
//IceNine - RetroDECK Team

"Once I've been told that what I wanted to do with RetroDECK Classic
was impossible by various experts of everything flat and packaged. 
Look at it now! Look at it! Marvel in the insanity!" 
// Xargon - RetroDECK Team

"A fatpak!"
//Lazorne - RetroDECK Team
```


---

## RetroDECK 0.10.0b - What is in it and what is not?

A this has been a huge endeavor we want to get an update out as soon as possible to update all the components, we have decided on a limited scope of new components to add in 0.10.0b.

### What's not in it?

**Important: On Ponzu** 

Ponzu does not work in version 0.10.0b (the temporary solution for installing legacy emulators). It simply cannot function with the new system.

You can keep your old version installed of RetroDECK installed and don't upgrade or block upgrades or downgrade from Flathub if needed.

### What's new?

This is a short summery and not the full list.

**Updated Everything** 

All components have been updated to their latest versions and are no longer in conflict. 

*Note:* We'll decide which versions to lock in during the community testing phase for the bleeding-edge components.

**Latest Runtime** 

RetroDECK is now using the latest KDE Runtime, no more angry and quite threatening terminal messages. 

**Changes** 

Many many many backend changes, we are so far over **1500+** commits since 0.9.4b.

**Tweaks and Cleanup** 

Many other tweaks and changes to configs and other cleanup. 

**Fresh Folder Looks** 

New icons for RetroDECK's folders made by the RetroDECK Team's very own iconographer Lahrs. With a function to disable the iconset (for all you icon haters out there, we got you covered) and a structure to support more community made folder iconsets in the future. 

**Ryubing** 

replaces legacy **Ryujinx**.

**Azahar** 

adds standalone support for 3DS emulation, not that Azahar does not support encrypted games.

**OpenBOR** 

is finally included, with its own wrapper. Just create `.bor` or `.openbor` files.

**GZDoom:** 

`.doom` File Improvements

The RetroDECK `.doom` file format now supports custom .ini files, symbolic links, and filenames that contain spaces. While we originally planned to replace it with UZDoom, we may need to postpone that transition until the 0.11.0b release. The UZDoom team is currently taking official control of their Flatpak distribution and are preparing pre‑release AppImages. Previously, their Flatpak was built by a third party; now it’s being integrated into their own build pipeline.

RetroDECK is happy to assist the UZDoom team with any Flatpak‑related questions or challenges they encounter during this process.

**Flips** 

A new tool, is built into RetroDECK via the Configurator. It can patch ROM hacks using `.ips` files.

**Rewritten YML with finer‑grained permissions** 

The latest rewrite reduces the broad, global permissions that the RetroDECK Flatpak previously required. Instead, we now request only the specific permissions and we’ve added inline comments explaining the rationale behind every permission. Looking ahead, we’re exploring additional incremental permission changes. Our goal is to eventually enable features such as HDR support in RetroArch and light‑gun compatibility, though these things aren’t available yet. *Huzzah! Transparency!*

---

## What’s coming next?

If you’re looking for many more components in RetroDECK, the second upcoming major release will deliver exactly that:

**RetroDECK 0.11.0b - Everything Explosion** 

That update will showcase the full power of the work we’ve put into RetroDECK rewrite.

Testing will start soon after 0.10.0b ships. There might be some extra time added for possible hot‑fixes (e.g., a 0.10.1b patch). 

We’re excited to show more when the time comes!

---

## That is all for now 

There are more things we are working on, but you will see them in future blog updates!

And as always if you want to help with development join the 💙-i-want-to-help channel on Discord.

Thanks everyone, our ARMs really hurt now from all that typing! 

//The RetroDECK Team 


### Links 

[retrodeck.net](https://retrodeck.net/)  
  
[Discord](https://discord.gg/WDc5C9YWMx) 

[Stoat](https://rvlt.gg/StVaEc0w) 

[GitHub](https://github.com/XargonWan/RetroDECK) 

[Wiki](https://github.com/XargonWan/RetroDECK/wiki) 

[Donations](https://retrodeck.readthedocs.io/en/latest/wiki_about/donations-licenses/) 

[Lemmy](https://lemmy.zip/c/retrodeck) 
