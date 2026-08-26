# How-to: Add a Component to RetroDECK - A Cooking Philosophy

<img src="../../../../wiki_icons/retrodeck/icon-component.svg" width="75" alt="">

This is the first step of creating a component and adding it into RetroDECK.

### Description

Creating a new RetroDECK component is a flexible process that can vary depending on the source of the component. However, the final structure remains consistent across all components. Building a new component in RetroDECK is like preparing a gourmet dish.

**Note:**

There’s no one-size-fits-all guide for adding a component. Each component is unique software with its own quirks, requirements and integration challenges. Use this guide as a starting point, but expect to adapt based on the specifics of what you're working with.

---

## About the Component Types

Read here for more details: 

- [Development Glossary](../../general/development-glossary.md) 
- [What is RetroDECK?](../../../wiki_about/what-is-retrodeck.md)

---

## Component Source Format: What to Prioritize?

When multiple source formats are available for a component, prioritize them in the following order for ease of integration with RetroDECK:

| Priority | Format              | Description                                                                 |
|----------|---------------------|-----------------------------------------------------------------------------|
| 1        | Flatpak             | A sandboxed package format commonly used on Linux for app distribution , published on flathub     |
| 2        | AppImage            | A portable, self-contained executable that runs without installation        |
| 3        | Precompiled Binary  | A ready-to-run executable built for a specific platform                     |
| 4        | Build from Source   | Raw source code that must be compiled manually before use                   |



---

## Beginning: Issue, Vision, Goals and Research

### Create an Issue and Talk to the Team

If you want to add a new component either to RetroDECK as an **internal component** or to the **RetroVERSE** as an **external component**, always start by opening an [Issue on Github](https://github.com/RetroDECK/RetroDECK/issues) or check if there already is an issue of the component you want to add. 

Use the issue to explain your idea and get feedback from the RetroDECK team.

Some components might not fit with RetroDECK’s design goals or technical direction. The RetroDECK team will review each proposal and has the final say on whether a component gets included or not.

### Check Licensing

Make sure the component you're suggesting has a license that is compatible with RetroDECK.

### Test & Research the Component

Before proposing anything, download and run the component locally. Understand how it behaves in its native environment.

- **Settings**: What options does it support? Look for things like hotkeys, fullscreen, widescreen, auto-close launcher, etc.
- **CLI/Launch Commands**: Are there any command-line options or launch arguments?
- **Configuration**: Where are settings saved? Identify any config files or folders used.


### How should users access it?

- Is it an component already supported by ES-DE native but not yet added to RetroDECK?
- Is it a new component that needs custom menu entries and formats?
- Is it a port that should go into the ES-DE port menu?
- Should it be launched via the Configurator?
- Is there cli launch command for the component and what are they?
- Other things that might be unique for just that component when it comes to access.

### Where do the files go?

- What files does the component use?
- How can you map them into the `retrodeck/` directory structure?

### What needs to be user-editable?

- Which files or folders should be exposed to the user?
- Think about what should go into `/home/<user>/.var/app/net.retrodeck.retrodeck/` - under `data`, `cache`, or `config`.


---

## Prerequisites

### Install Development Tools 

Make sure the following tools are installed on your system:

- `flatpak-builder`
- `git`
- `gh` *(optional, for GitHub CLI tasks)*

Install them using your distribution’s package manager (e.g. `apt`, `dnf`, `pacman`, etc.).

### Install Latest RetroDECK Cooker

[RetroDECK/Cooker](https://github.com/RetroDECK/Cooker)

```
flatpak remove net.retrodeck.retrodeck -y
flatpak install --user --bundle --noninteractive -y RetroDECK-cooker.flatpak 
```

### How-to: Enter the Flatpak Shell & Folders

```
flatpak run --command=bash net.retrodeck.retrodeck --debug
```

`app/` corresponds to your local Flatpak system environment.

`var/` corresponds to your local Flatpak user environment.

While the runtime itself is the "OS" of the flatpak.

**Read more here:** 

- [Folders & Filepaths](../../general/folders-filepaths.md)
- [Debug Mode](../../general/debug-mode.md)

---



## Adding External Components and Assets

When adding an external component or asset, choose the option that best matches its scope, licensing, integration and support requirements.

If you are targeting your component to become an internal component of RetroDECK you can skip this step.

---

###  RetroVERSE

Choose **RetroVERSE** when the component or asset is suitable for RetroDECK's retro-focused  ecosystem.

- **Scope:** Strictly retro-focused components and assets.
- **Licensing:** Must comply with applicable open-source licensing requirements. Proprietary code or assets may only be included when the necessary permission has been granted by the rights holder.
- **Support:** Supported by the RetroDECK team and community.
- **Review:** Reviewed by the RetroDECK team and community members.  The RetroDECK team has the final say.
- **Integration:** Integrates directly with RetroDECK.
- **Adaptation:** Components are easier to maintain and adapt through RetroDECK component files.

---

### PortMaster

Choose **PortMaster** when the port would benefit users beyond RetroDECK or falls outside the scope of RetroVERSE.

- **Scope:** Broader than RetroVERSE, supporting a wider range of games and ports.
- **Review:** Reviewed by the PortMaster team and community members.
- **Support:** Supported by the PortMaster team and community.
- **Integration:** Less directly integrated with RetroDECK. PortMaster data is maintained under `retrodeck/PortMaster`.
- **Reach:** Makes the port available to users beyond the RetroDECK ecosystem.

See the [PortMaster Porting Guide](https://portmaster.games/porting.html) for porting requirements and instructions.

---

### RetroLACE: Local Add-on Component Environment

*“There comes a time in every man's life when he has to tie his own shoes.”*
- James C. Wood 1976

**RetroLACE** or **LACE** (Local Add-on Component Environment) is a developer-oriented system for launching external components locally within RetroDECK and **shoeing** them in.

This feature is primarily intended for developers testing components that may eventually be:

- Integrated into RetroDECK as an internal component.
- Distributed through RetroVERSE as an external compoent. 
- Distrubuted by the developers own channels and installed via **RetroLACE** as an modification or add-on. 

It can also be used to experiment with software or assets that fall outside the normal scope of RetroDECK.

#### Users and RetroLACE

RetroDECK allows users to manually install external components via RetroLACE. This feature is **disabled by default** and must be explicitly enabled.

When enabling **RetroLACE**, users must accept a **legal disclaimer** acknowledging that:

- Their RetroDECK installation will be considered **modified**.
- External components are **not officially supported** by the RetroDECK team.
- They are responsible for the external components they install and understand that they may cause **data loss, system damage, or other issues** affecting RetroDECK or the host operating system.
- Users are responsible for performing **due diligence and appropriate research** before installing any external component.
- That they are resposible for any legal or licensing issues related to their use.

#### You as a developer and RetroLACE

**RetroLACE** components may be used for development, testing, or software and assets that cannot be included in RetroVERSE or RetroDECK, for example because they:

- Do not fit RetroDECK's retro-focused scope.
- Have licensing restrictions that prevent inclusion in RetroDECK, but the user has obtained a valid license for their own use.
- Require proprietary software or assets that cannot be distributed by RetroDECK.

Users download the component from its author's website or repository and extract it into:

`retrodeck/storage/retrodeck/retrolace`

**Support and Responsibility**

The component author or maintainer (YOU) is responsible for:

- Providing user support and maintaining the component.
- Making sure the component only installs and uses files within the RetroDECK Sandbox.
- Ensuring compliance with applicable licenses.
- Hosting and distributing the component.
- Resolving issues caused by the component.
- Taking reasonable measures to ensure the component is safe and trustworthy.

---

##  Guides for Component Creation

After you have taken all into account follow the one of these General Guides and begin the second step of your journey to add a Component into RetroDECK:

- **Source: Flatpak:** [Creating Component: Flatpak](component-create-flatpak.md)

- **Source: AppImage:** [Creating Component: AppImage](component-create-appimage.md)

- **Source: Binary:** [Creating Component: Binary](component-create-binary.md)

- **Source: Build from Source:** [Creating Component: Build from Source](component-create-source.md)
