---
date: 2024-08-18
---

# August 2024: Summer report

Highlights:

- 0.8.X Scraping data issue & testing
- Lighter Manifest
- Godot Configurator


<!-- more -->

<img src="../../../rd-circle.png" width="150">

## 0.8.X Scraping data issue

There was a scraping data issue that we tried to fix in 0.8.3b then in 0.8.4b. It affected some systems that did not move the folders like downloaded_media correctly or did not update the variables for the new data location.

### Better testing

We always try our best to test various features, but the change was quite complex, and we missed a few scenarios, and we are looking over our testing routines and volunteering tester program to make things even better. The team hopes eventually we have more community beta testers volunteering and we have developed some automated testing tools.

If you want to help with testing contact us on Discord or Matrix.

The 0.8.0 branch is also on the old manifest. Regarding that...

---

## NEWS: Lighter Manifest for 0.9b

You did not think we just spent all summer on the beach did you?!

Now this might not be so exciting for the majority of our userbase, but we have begun rewriting the entire RetroDECK flatpak manifest for 0.9.0b (it's not done yet, but getting close). This allows us to:

- Make even better synergies between emulator/engine dependencies with less overhead.
- Make several optimizations.
- Cut down build time.
- Reduce space.

In short what we have done is separated the build from what was a monolithic approach where everything was built in one instance to a modular approach where each subsystem/emulator/engine has its own building environment and the main RetroDECK project just builds together all those modules.

It will also make it easier overall to add more systems to RetroDECK.

---

### The results so far are 🥁

**RetroDECK's build time has been reduced:**

We have cut down the average buildtime by a whopping **70-75%** from 3.30 hours to about 45 minutes!

**We saved space:**

Between **350mb to 500mb** of data have been freed from the finished project to use for other activites.

That is about **1/5** of the entire application trimmed.

**Note:** A majority of this freed space will probably be eaten up later by the new systems we will add in 0.9.0b.

---

## Godot Configurator

Yes, we are still working on it and much more!

Both of these videos is still early W.I.P, things **will** change and nothing in these videos should be seen as final.


---




![type:video](ConfiguratorGodot.mp4)

**In this video:**

- Shows the BIOS checker in a table format.

- A font selector but also showcase the **Accessible** font. <br>
    - This is something we talked about for a long time and was the driving force behind the font selector. It uses the [OpenDyslexic](https://opendyslexic.org/) font.<br>
For many users it is a trivial feature to change a font but for those that truly need something that is easier to read, it could be a game changer.


---


![type:video](ConfiguratorLogs.mp4)

**In this video:**

- Access various logs directly from the Configurator (Emulators, Engines, Systems, RetroDECK Features) only a few have been added as a POC. This is great for troubleshooting but also a good tool for users that loves to tweak.
- We are experimenting with the ability to open both the Wiki and the Website from within the Configurator.
    - Too add to that we are looking into an option to sync/download the entire Wiki via a button to have as an local copy when you are offline.


---


## That is all for now

Thanks everyone!

//The RetroDECK Team

### Links

[Discord](https://discord.gg/WDc5C9YWMx)

[Matrix](https://matrix.to/#/#retrodeck:matrix.org)

[Github](https://github.com/XargonWan/RetroDECK)

[Wiki](https://github.com/XargonWan/RetroDECK/wiki)

[Donations](https://retrodeck.readthedocs.io/en/latest/wiki_about/donations-licenses/)

[Lemmy](https://lemmy.zip/c/retrodeck)
