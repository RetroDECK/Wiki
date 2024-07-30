# RetroDECK ‐ Story & Philosophy

## Story: How RetroDECK was born?

<img src="../../wiki_images/logos/351e-deck-logo.png" width="550">

Let's take a step back.

RetroDECK was born on March 4th, 2022, in Kyoto, Japan, with the name of `351EDECK`.

I am also one of the founding members of `351ELEC` now [AmberELEC](https://amberelec.org/).
What I wanted to do was to "port" `351ELEC` to the Steam Deck, but instead of doing custom firmware to flash, I wanted to do it as a full application that could be launched from Steam.

Eventually, after talking to the other team members, we decided that we did not want to support another platform such as Steam Deck, so I decided to continue the project on my own, renaming it to RetroDECK.
Back then I had many options on how to create `351EDECK`, such as a bash script, appimage and flatpak.
In the beginning I opted for a simple shell script, in fact `RetroDECK` aka `351EDECK` v0.1a existed as a mere shell script.

However I had bad feedbacks from the community because someone was feeling unsafe to give my script the root privileges so evaluating the Steam Deck use case I felt like it was not the right direction to take, the people was not feeling comfortable to give the sudo to a random script downloaded from the internet, so they asked to packetize it in some way.

Valve suggests the flatpak technology to port the applications on Steam Deck so, I decided to follow their guidelines, and I created the `RetroDECK` that you know today, starting from a Manjaro virtual machine as a development environment because I did not have a Steam Deck yet.

// Xargon (Project Founder)

## What is RetroDECK's development philosophy?

Emulation is a global multi-generational effort of development that has lasted for decades, motivated by the pure love for video game preservation for current and future generations. RetroDECK depends on the constant development of all our dependencies (the emulators, front-end, game engines, various assets, etc…). It would be unfair to both the hard work that has been done in those projects and to the entire open-source community if we said otherwise or tried to take credit, conceal, monetize or obscure it for our own gain. As it is their software that makes running the games possible, not RetroDECK by it self as all RetroDECK is unified experience with a framework on top.

We believe in free and open-source video game preservation and don't believe in the monetization or for profit models in any shape or form for this project. Everything we do should be open and we shall not offer any predatory donations schemes to gain funds
or try to divide users into none paying vs paying users.

We always strive to have the best possible relationship with the teams that generously provide and develop the third-party software we are depending on now and in the future. Everyone that works on RetroDECK is immensely grateful for the global collective effort and work that has been done. Without these projects and those passionate people RetroDECK would not be possible as it is them who runs the games not RetroDECK by it self.

We also want to add a word for the developers of the third-party projects: Please feel free to reach out to us, talk to us for any reason and share your ideas. We value your feedback and suggestions, and our door is always open for collaboration and improvements. You are the backbone of our project, and we appreciate your contributions.

You can find more about our dependencies on the wiki and how to donate to them or us under the donations & license page on this wiki.

// The RetroDECK Team

## Inspiration for RetroDECK

RetroDECK is inspired by embedded emulation systems like:

- AmberELEC
- EmuELEC
- CoreELEC
- Lakka
- Batocera


The RetroDECK team consists of several veterans from some of the projects mentioned above as well as a bunch of other talented other individuals.

## What are the long term vision and goals of the RetroDECK project?


The long term vision and goals of the project is an all-in-one application to manage your entire retro games backup library that is:

- Already configured and should just work with your games.

- Has disaster recovery and multi device support: with cloud saves and syncs.

- Easy to install with one click installation.

- Easy to use and provide a "Console-like / Batocera-like" featured user experience.

- Easy to manage your collections of roms, mods and romhacks.

- As much as possible should be configurable from inside RetroDECK itself without needing to exiting the application.

- Make tighter integrations with bundled emulators and expose more features and ways to handle them to the end users.

- Should be secure, safe, and stable.

- Should have an easy way to mange external controllers and other inputs.

- Should support a majority of all supported Emulators in ES-DE, so at least you have one good option per system.

- Should in the long run support applications outside of the scope of ES-DE via a ports manager.

- Should be plug and play and fill the need for a portable retro gaming solution that you can bring on the go to a friend’s/family/others house. Just dock into the TV and get going!

- Should fully support Steam Deck, Linux Desktop, other SteamOS or Linux based devices.

- AND MORE
