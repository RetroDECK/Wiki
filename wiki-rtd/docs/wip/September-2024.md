---
date: 2024-09-18
---

# September 2024: Post-summer report

Highlights:

- Lighter Manifest: What is it?
- Lighter Manifest: Results
- Godot Configurator - POC: Font Selector & Bios Checker
- Godot Configurator - POC: Logs & Wiki
- Godot Configurator - POC: Border Selection
- Godot Configurator - POC: RetroArch submenu


<!-- more -->

<img src="../rd-circle.png" width="150">


## Post-summer blog

You did not think we just spent all summer on the beach, did you?! 🏖️

---

## NEWS: Lighter Manifest for 0.9.0b

Now this might not be so exciting for most of our users, but we have begun rewriting the entire RetroDECK flatpak manifest for 0.9.0b (it is not done yet but getting close).


### What is it?

**In short what we have done:**

Moved RetroDECK from a monolithic approach where everything was built in one instance to a modular approach where each subsystem/emulator/engine/feature has its own building environment in its own repo and the main RetroDECK project just builds together all those modules.

The change did require us to change RetroDECK to an organization on GitHub to manage all the new "sub-repos" in a better way, as having them all under one developers GitHub profile was a bit unwieldy (it also made it easier for the entire team to contribute in a more organized manner).

It was also something we wanted to do before we shipped any of the bigger newer features (better to build a good foundation before you build the house).

**This allows us to:**

- Make even better synergies between emulator/engine dependencies with less overhead.

- Make several optimizations.

- Cut down build time.

- Reduce space.

- And more!


### What are the current results?

The results so far 🥁

#### RetroDECK's build time has been reduced:

- We have cut down the average buildtime by a whopping **70-75%**.
- From **3.30 hours** to about **45 minutes**.

#### We saved space:

A majority of this freed space will probably be eaten up later by the new systems we will add in 0.9.0b.

- Around **400mb-600mb** of data have been freed from the finished project to use for other activites.

- That is about **1/5** of the entire application trimmed.


---

## Godot Configurator

Yes, we are still working on it and much more! But we are now ready to showcase more of what we have been working on..

#### This is W.I.P! All is subject to change! 🛑

Things are changing daily and nothing in these videos / screenshots should be seen as final. It is more akin to a pre-alpha with several POC (proof of concept).

Also note that the name "Godot Configurator" is just the working name, it will be called RetroDECK Configurator when it is released and replaces the old version.

The goal of the new RetroDECK Configurator are the same:

- Replaces the current RetroDECK Configurator.
- Can us controllers to navigate.
- Populate it with more features then before and make it easy to expand.

### POC: BIOS Checker, Font Selector

![type:video](Configurator-Bios-OpenDys.mp4)


- We show an early version of the BIOS checker in a table format.

- The font selector and highlighting the **Accessible** font.

    - This is something we talked about for a long time and was the driving force behind the font selector. It uses the [OpenDyslexic](https://opendyslexic.org/) font. For many users it is a trivial feature to change a font but for those that truly need something that is easier to read, it could be a game changer.



### POC: Logs Viewer, Wiki / Website

![type:video](Configurator-Logs-Website.mp4)


- Access various logs directly from the Configurator only a few have been added as . This is great for troubleshooting but also a useful tool for users that love to tweak.

- Experimenting with the ability to open both the Wiki and the Website from within the Configurator.

    - We are also looking into an option to sync/download the entire Wiki via a button to have as a local copy when you are offline for ease-of-access when you are out traveling.


### POC: RetroArch sub-menu

<img src="../submenu-ra.png" width="750">

This is a prototype sub-menu for RetroArch.

- Where you can have some information about RetroArch.
- Open RetroArch
- Quick Settings: It allows you do some things without needing to open the entire RetroArch interface.
- We are also experimenting with button inputs and placeholder placements.

### POC: Border Selection and buttons

<img src="../buttons.png" width="450">
<img src="../newbutton.webp" width="150">

We want to present graphical buttons all over the Configurator.

In this example we are showing our thoughts on one example selection of borders and how it could look like.

The check mark or crosses shows you what systems you have activated/deactivated when you have enabled borders menu.

---

## Q&A - Godot Configurator

### Do you plan to ship the new Configurator as part of 0.9.0b?

Yes that is the goal, it should at least match the current Configurator in features.

But this is as long as everything goes to plan and we can keep the current momentum.

FOSS development is volunteer work and the RetroDECK Team is doing our best to try to make this happen.

But sometimes other things in life takes priority (good and bad).

### Can you test it now?

<img src="../ES-DECooker.png" width="450">

We have enabled the Godot Configurator, but as of this writing nothing is bound to any functions and it won't do anything except allow you to click around.


### How can I help out?

If you want to help out with our efforts please post your interest in the 💙-i-want-to-help in either Matrix or Discord.

We are always looking for more developers, artists or testers that can contribute to RetroDECK.



## That is all for now

There are more things we are working on but you will see them future blog updates!

Thanks everyone!

//The RetroDECK Team

### Links

[Discord](https://discord.gg/WDc5C9YWMx)

[Matrix](https://matrix.to/#/#retrodeck:matrix.org)

[Github](https://github.com/XargonWan/RetroDECK)

[Wiki](https://github.com/XargonWan/RetroDECK/wiki)

[Donations](https://retrodeck.readthedocs.io/en/latest/wiki_about/donations-licenses/)

[Lemmy](https://lemmy.zip/c/retrodeck)
