--- 

date: 2026-02-26

--- 

# March 2026: A Culinary Experience

The RetroDECK Team have been hard at work stirring the development cauldron.

---

## Highlights

**News**

- Community Showcase: Decky Plugin - RetroDECKY
- Development Update: 0.11.0
- Publication Pipeline Changes
- RetroDECK Epicure
- RetroDECK Countertop



<!-- more -->

---

## Community Showcase: Decky Plugin - RetroDECKY

<img src="../rdecky1.png" width="200" alt="RetroDECKY Screenshot 1"> 
<img src="../rdecky2.png" width="200" alt="RetroDECKY Screenshot 2"> 
<img src="../rdecky3.png" width="200" alt="RetroDECKY Screenshot 3"> 

**Link:** [GitHub: RetroDECKY](https://github.com/Teppichseite/RetroDecky)

**RetroDECKY** is a newly released Decky plugin developed by community contributor *Teppichseite*. It provides an in-game popup menu for RetroDECK that allows users to trigger component hotkey actions through virtual buttons, complementing existing radial menus and built-in hotkeys. It can also display ES-DE artwork.

Additional features are planned, including a manual reader and other quality-of-life improvements.

If you have suggestions for Teppichseite or would like to contribute, please submit feedback or issues on the project's GitHub repository.

**Note:** 

This is an extremely early piece of software and should not be considered to be in an alpha stage (it is currently only a proof-of-concept).

**RetroDECK Team Comment:**

RetroDECKs design philosophy is that all functionality should be contained within RetroDECK itself, you download it and you get it all. Nonetheless, the team actively welcomes community contributions such as RetroDECKY, which introduce fresh ways to enhance and tinker with RetroDECK. 

We closely follow its development and provide ongoing feedback to Teppichseite or any other developers pursuing new projects.

---

## Development Update: 0.11.0

We have begun development on the upcoming major update, **0.11.0**.

This release is currently in active early development, with the team adding new features, improvements and several unexpected things.

**Remaining Rewrites**

With the release of **0.10.0b**, RetroDECK underwent a comprehensive architectural overhaul, transitioning to an internal modular component structure. As part of the roadmap toward **0.11.0**, we have begun working on the remaining things that were not included in the initial rewrite.

This work will be covered in greater detail in future blog posts.

This month we will focus on: Publication Pipeline Changes

---

### Publication Pipeline Changes

Several build and publication pipelines were intentionally left unchanged due to time constraints and other priorities in **0.10.0b**. These remaining pipelines are now being modernized as part of the work leading up to the **0.11.0** release.

**So, what’s changing?**

Previously, we maintained **two** release variants of RetroDECK:

- Stable (Flathub releases)
- Cooker (bleeding-edge nightlies)

With the updated publication pipeline, that number will increase to **four**:

- Stable  
- **Epicure**  
- Cooker  
- **Countertop**

---

### RetroDECK Epicure

<img src="../rd-epicure-icon.svg" width="75" alt="RetroDECK Countertop Icon"> <img src="../rd-epicure-configurator.svg" width="75" alt="RetroDECK Countertop Configurator Icon"> 

*Epicure*

*A user who cultivates refined taste and appreciation, eager to savor even the smallest preview of the latest culinary experiences, an apéritif of what is yet to come.*

**RetroDECK Epicure** is a new testing branch designed to bridge the gap between the **Cooker** and **Stable** releases by leveraging the `flathub.beta` repository intended for testing users.

Installation and updates are streamlined: users simply install RetroDECK Epicure from the `flathub.beta` repository. Updates are then delivered automatically through Flathub via your software center, such as Discover, Bazaar, or GNOME Software.

Unlike **Cooker**, which focuses on bleeding-edge changes and new features, **Epicure** is built on the **Stable** branch while automatically integrating the latest pre-release or unstable builds of individual components.

The goal is for Epicure to follow an automatic biweekly release schedule.

This approach provides testing users with access to newer component versions while maintaining a reliable and stable base. However, if a component introduces major changes, automatic builds may temporarily break for that component until they are addressed in a subsequent Epicure update.

Epicure serves a dual purpose: to support users who prefer more bleeding-edge, less stable component versions (with all the risks that entails, as this is still a testing branch) and to expand the tester base to identify and report issues earlier in the release cycle before they reach the **Stable** branch.

---


### RetroDECK Countertop

<img src="../rd-countertop-icon.svg" width="75" alt="RetroDECK Countertop Icon"> <img src="../rd-countertop-configurator.svg" width="75" alt="RetroDECK Countertop Configurator Icon"> 

*Countertop*

*A self-directed chef. One who brings their own ingredients, crafts their own masterpiece, and refines their recipe with the ambition of one day contributing to the final buffet.*

**RetroDECK Countertop** is a development branch based on **Cooker** and intended for developers. It is a minimal, stripped-down build of RetroDECK that includes the RetroDECK Framework, ES-DE, and a set of development tools.

Countertop excludes the standard bundled components, providing a lightweight environment for experimentation, tinkering, and integration work. It serves as a practical sandbox for developers who wish to prototype and test new components within the RetroDECK ecosystem without repeatedly downloading the full RetroDECK package with all components included.

This streamlined configuration enables faster iteration and more focused development within the RetroDECK environment.

---

## That is all for now

There are more features and improvements in the works, which will be shared in future blog updates!

As always, if you want to help with development, join the *💙-i-want-to-help* channel on **Discord**, or reach out to us on **Matrix** or other socials.

Thank you to everyone for your continued support.

// The RetroDECK Team

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
