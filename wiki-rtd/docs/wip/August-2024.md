---
date: 2024-08-18
---

# August 2024: Summer report

Highlights:

- 0.8.3 Scraping data issue & testing
- Lighter Manifest
- Godot Configurator


<!-- more -->

<img src="../../../rd-circle.png" width="150">

## 0.8.3 Scraping data issue

There was a scraping data issue we tried to fix in 0.8.3 data issue affecting some systems that did not move the folders like downloaded_media correctly or it did not update the variables where the data was located after the move.

### Better testing

We always try our best to test various features, but the change was quite complex, and we missed a few scenarios, and we are looking over our testing routines to make things even better. The team hopes eventually we have more community beta testers volunteering and we have developed some automated testing tools.

If you want to help with testing contact us on Discord or Matrix.

The 0.8.0 branch is also on the old manifest. Regarding that...

## NEWS: Lighter Manifest for 0.9b

Now this might not be so exciting for the majority of our userbase, but we have begun rewriting the entire RetroDECK flatpak manifest for 0.9.0b (it's not done yet). This allows us to:

- Make even better synergies between emulator/engine dependencies with less overhead.
- Cut down build time.
- Reduce space.

In short what we have done is separated the build from what was a monolithic approach where everything was built in one instance to a modular approach where each subsystem/emulator/engine has its own building environment and the main RetroDECK project just builds together all those modules.

It will also make it easier overall to add more systems to RetroDECK.

### The results so far are 🥁

**RetroDECK's build time has been reduced:**

We have cut down the average buildtime by a whopping **70-75%** from 3.30 hours to about 45 minutes!

**We saved space:**

Between **350mb to 500mb** of data have been freed from the finished project to use for other activites. Note: This will probably be eaten up later by the new systems we will add 0.9.0b.


## Godot Configurator

![type:video](ConfiguratorGodot.mp4)

Yes, we are still working on it and much more!

This video is still heavy early W.I.P and things **will** change.

- BIOS checker in a table format (might change).
- A font selector where you can now choose a font you like.
- In the font selector we want to highlight the Accessible font. This is something we talked about for a long time and was the driving force behind the font selector. It uses the [OpenDyslexic](https://opendyslexic.org/) font. For many it is a trivial feature to change a font but for those that truly need something that is easier to read, it could be a game changer.

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
