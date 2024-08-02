---
date: 2024-08-18
---

# August 2024: Summer report

Highlights:

- 0.8.3 Scraping data issue & testing
- Godot Configurator
- Lighter Manifest


<!-- more -->

<img src="../../../rd-circle.png" width="150">

## 0.8.3 Scraping data issue

There was an scraping data issue we tried to fix in 0.8.3 data issue affecting some systems that did not move the folders like downloaded_media correctly or it did not update the variables where the data was located after the move.

### Better testing

We always try our best to test various features but the change was quite complex and we missed a few scenarios and we are looking over our testing routines to make things even better. The team hopes in the long run we have more community beta testers volunteering and we have develop some automated testing tools.

## Lighter Manifest for 0.9b

Now this might not be so exiting for the majority but we have been rewriting the entire RetroDECK flatpak manifest for 0.9 during the summer (we are still working on it). This to even find better synergies between emulator/engine dependencies, cut down build time and reduce space.

In short what we have done is separated the build from what was a monolithic approach where everything was built in one instance to a modular approach where each subsystem/emulator/engine has it's own building environment and the main project just builds together all those modules.




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
