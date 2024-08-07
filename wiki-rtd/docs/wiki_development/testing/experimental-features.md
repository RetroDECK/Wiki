# What are RetroDECK experimental features?

The main function of the experimental features is for the RetroDECK team to do some light testing in the stable environment.

Experimental features are a showcase of what proof-of-concepts we are trying out.

All these features are just conceptual, and we hope them release ready in a later major update or scrap them if they don't work out.

## 🛑 Backup before testing! 🛑

These features can make you lose all data including `ROMS`, `BIOS` and `Scraped Data` etc...<br>

We **recommend** that you don't run any cooker builds on your main gaming machine as you daily usage of RetroDECK.

### How do I take a backup?

Backup your `/retrodeck/` and its content and `/.var/app/net.retrodeck.retrodeck/`.
You could copy the entire folders to a secure location or for a quick test you could just rename both of the folders into something else.
Then RetroDECK will think it's a fresh install.

Example of renaming:<br>
`OLDnet.retrodeck.retrodeck/`<br>
`OLDretrodeck/`

## How do I enable experimental features?

From CLI run:

`flatpak run net.retrodeck.retrodeck uuddlrlrstart`

The `Developer Options Menu` should show up inside the Configurator.
