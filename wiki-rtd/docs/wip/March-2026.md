--- 

date: 2026-02-26

--- 

# March 2026: A cooking experince

The RetroDECK Team have been hard at work. 

---

## Highlights

**News**

- Development Update: 0.11.0
- Publication Pipeline Changes
- RetroDECK Epicure
- RetroDECK Countertop



<!-- more -->


---

## Development Update: 0.11.0

We have begun development on the upcoming major update, **0.11.0**.

This release is currently in active early development, with the team evaluating new features, improvements and several unexpected things.

---

## Publication Pipeline Changes

With the release of **0.10.0b**, RetroDECK underwent a comprehensive architectural overhaul. The project transitioned to an internal modular component structure.

At the time, certain build and publication pipelines were intentionally left unchanged due to we simply did not have time to redo them all. These remaining pipelines are now being renovated as part of the road toward the **0.11.0** release.

---


### So, what’s changing?

Previously, we maintained **two** release variants of RetroDECK.  

- Stable (Flathub Releases)
- Cooker (Bleeding Edge Nightlies)

With the updated publication pipeline, that number will increase to **four**.

- Stable
- Epicure
- Cooker
- Countertop


---

### RetroDECK Epicure

<img src="../rd-epicure-icon.svg" width="75" alt="RetroDECK Countertop Icon"> <img src="../rd-epicure-configurator.svg" width="75" alt="RetroDECK Countertop Configurator Icon"> 

**Epicure**

*A user who cultivates refined taste and appreciation, eager to savor even the smallest preview of the latest culinary experiences, an apéritif of what is yet to come.*

**RetroDECK Epicure** is a new testing branch designed to bridge the gap between the Cooker and Stable releases by leveraging the `flathub.beta` repository intended for testing users.

Installation and updates are streamlined: users simply install RetroDECK Epicure from the `flathub.beta` repository. Updates are then delivered automatically through Flathub via your software center, such as Discover, Bazaar, or GNOME Software.

Unlike Cooker, which focuses on bleeding-edge changes and new features. Epicure is built on the Stable branch while automatically integrating the latest pre-release or unstable builds of individual components.

This approach provides testing users with access to newer component versions while maintaining a reliable and stable base system. However, if a component introduces major changes, automatic builds may temporarily break for that component until addressed in a subsequent Epicure update.

Epicure has a dual purpose: to satisfy users who prefer more bleeding-edge, less stable component versions, and to expand the tester base to identify and report issues earlier in the release cycle before they reach the Stable branch.

Epicure follows a automatic biweekly release schedule.

---


### RetroDECK Countertop

<img src="../rd-countertop-icon.svg" width="75" alt="RetroDECK Countertop Icon"> <img src="../rd-countertop-configurator.svg" width="75" alt="RetroDECK Countertop Configurator Icon"> 

**Countertop**

*A self-directed chef. One who brings their own ingredients, crafts their own masterpiece, and refines their recipe with the ambition of one day contributing to the final buffet.*

**RetroDECK Countertop** is a development branch based on Cooker and intended for developers. It is a minimal, stripped-down build of RetroDECK that includes the RetroDECK Framework, ES-DE, and a set of development tools.

Countertop excludes the standard bundled components, providing a lightweight environment for experimentation and integration work. It serves as a practical sandbox for developers who wish to prototype and test new components within the RetroDECK ecosystem without repeatedly downloading the full suite of packages.

This streamlined configuration enables faster iteration and more focused development within the RetroDECK Retro Gaming Platform.

---

## That is all for now 

There are more things we are working on, but you will see them in future blog updates!

And as always if you want to help with development join the 💙-i-want-to-help channel on Discord or chat us up on Matrix.

Thank you to everyone for your continued support.

//The RetroDECK Team 

---

###  RetroDECK: Community  Links

| Category | Link | Description |
|----------|------|-------------|
| 🌐 Website | [retrodeck.net](https://retrodeck.net/) | Official RetroDECK homepage |
| 💬 Discord | [Join Discord](https://discord.gg/WDc5C9YWMx) | Discord community chat |
| 💬 Matrix | [Matrix Room](https://matrix.to/#/#retrodeck:matrix.org) | Open Matrix community space |
| 💬 Lemmy | [Lemmy Community](https://lemmy.zip/c/retrodeck) | RetroDECK community on Lemmy |
| 💬 Reddit | [r/retrodeck](https://reddit.com/r/retrodeck) | RetroDECK subreddit |
| 📖 Wiki | [RetroDECK Wiki](https://github.com/RetroDECK/RetroDECK/wiki) | Official documentation and guides |
| ❤️ Donations | [Donations & Licenses](https://retrodeck.readthedocs.io/en/latest/wiki_about/donations-licenses/) | Support the project and view license information |

---
