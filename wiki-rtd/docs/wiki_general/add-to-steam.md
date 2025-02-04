# Adding RetroDECK to Steam

Here are two ways to add RetroDECK to Steam and the settings you need to enable after adding it. If you have the Flatpak version of Steam installed, you need to do some extra steps for everything to work.

We plan to allow the user to automatically add RetroDECK to Steam in a future update from within the application. 

## Add with BoilR 

<img src="../../wiki_images/logos/boilr-logo.png" width="150">

If you don't have [BoilR](https://flathub.org/apps/io.github.philipk.boilr) you can just install it from Flathub. BoilR will add RetroDECK to Steam (Flatpak or standard versions) and also add the Steam Grid art.

On the Steam Deck do this in Desktop Mode-

1. Close Steam completely.
2. Open BoilR.
3. Make sure RetroDECK is marked in the Import Games section.
4. Go to Settings.
4. Check Download Images.
5. Enter your Authentication Key from SteamGridDB.
6. Choose if you want animated images or other types of images.
7. Go back to `Import Games`.
8. Press the `Import Button`.
9. Close BoilR and open Steam. The RetroDECK entry should now be there.

## Add Manually

1. Open Steam.
2. Go to the `Games` tab, press `Add non Steam game to My library`, and select RetroDECK from the list of installed applications.
3. Visit SteamGridDB and manually download the art.
4. Follow the guides on SteamGridDB to set up each art piece correctly.

## Steam Flatpak Version - Extras

<img src="../../wiki_images/logos/flatpak-logo.png" width="150">

If you have the [Steam Flatpak](https://flathub.org/apps/com.valvesoftware.Steam) version installed, some extra steps apply.

### Prerequisites

To make a flatpak launch other flatpaks, it needs a special permission called `org.freedesktop.Flatpak`. 

This opens up the Flatpak more than normal, as flatpaks are not allowed to run many system commands from the sandbox. 

You can add the permission using Flatseal or directly from the terminal.

**Flatseal:**

If you don't have [Flatseal](https://flathub.org/apps/com.github.tchx84.Flatseal) you can install it from Flathub.

1. Open Flatseal.
2. Click on Steam.
3. Scroll down to `Session Bus`.
4. Press the `+` sign.
5. Paste in `org.freedesktop.Flatpak`.
6. Launch Steam.

**Terminal:**

Copy the following into the terminal:

`flatpak --user override --talk-name=org.freedesktop.Flatpak com.valvesoftware.Steam`

### Add RetroDECK to Steam

Add RetroDECK to Steam with by following the guides above.

**Special Notes on Manual Install:**

Steam won't find the application directly, so you will need to manually browse to the desktop file to add it:

`/var/lib/flatpak/app/net.retrodeck.retrodeck/current/active/export/share/applications/`

### Configuring RetroDECK in Steam Flatpak

After adding RetroDECK to Steam, right-click on the RetroDECK entry and change the shortcut values to:

**Target:**

`/usr/bin/flatpak-spawn`

**Launch options:**

`--host flatpak run --branch=stable --arch=x86_64 net.retrodeck.retrodeck`

This should now be enough for you to launch RetroDECK.
