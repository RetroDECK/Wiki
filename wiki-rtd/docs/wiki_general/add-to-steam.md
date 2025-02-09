# Adding RetroDECK to Steam

There are several ways to add RetroDECK to Steam. If you have the Flatpak version of Steam installed, you need to do some extra steps for everything to work.

## Add with BoilR 

<img src="../../wiki_images/logos/boilr-logo.png" width="150">

If you don't have  you can just install it from Flathub. BoilR will add RetroDECK to Steam (Flatpak or standard versions) and also add the Steam Grid art.

On the Steam Deck do this in Desktop Mode-

1. Close Steam completely.
2. Open [BoilR](https://flathub.org/apps/io.github.philipk.boilr) (install it from Flathub if you don't have it).
3. Make sure RetroDECK is marked in the Import Games section.
4. Go to Settings, check Download Images, and enter your Authentication Key from SteamGridDB.
5. Choose if you want animated images or other types of images.
6. Go back to `Import Games` and press the `Import Button`.
7. Close BoilR and open Steam. The RetroDECK entry should now be there.

## Add Manually

1. Open Steam.
2. Go to the `Games` tab, press `Add non Steam game to My library`, and select RetroDECK from the list of installed applications.
3. Visit SteamGridDB and manually download the art.
4. Follow the guides on SteamGridDB to set up each art piece correctly.

## Add Manually from SteamOS

In SteamOS, you can just right-click on RetroDECK on the desktop, and you will have an option to add it to Steam.

## Steam Flatpak Version

<img src="../../wiki_images/logos/flatpak-logo.png" width="150">

If you have the [Steam Flatpak](https://flathub.org/apps/com.valvesoftware.Steam) version installed, some extra steps apply.

**Warning:** 

This opens up the Flatpak more than usual, as flatpaks are not allowed to run many system commands from the sandbox.

### Add the Permission

To make a flatpak launch other flatpaks, it needs a special permission called `org.freedesktop.Flatpak`. 

You can add the permission using Flatseal or directly from the terminal.

**Flatseal:**

1. Open [Flatseal](https://flathub.org/apps/com.github.tchx84.Flatseal) (install it from Flathub if you don't have it).
2. Click on Steam.
3. Scroll down to `Session Bus` and press the `+` sign.
4. Paste in `org.freedesktop.Flatpak`.
5. Launch Steam.

**Terminal:**

Open and copy the following into the terminal:

`flatpak --user override --talk-name=org.freedesktop.Flatpak com.valvesoftware.Steam`

### Add RetroDECK to Steam Flatpak

Add RetroDECK to Steam by via a method following the guides above. 

**Note on manual install:** 

Steam won't find the application directly, so you will need to manually browse to the desktop file to add it:

`/var/lib/flatpak/app/net.retrodeck.retrodeck/current/active/export/share/applications/`

### Configuring RetroDECK in Steam Flatpak

After adding RetroDECK to Steam, right-click on the RetroDECK entry and change the shortcut values to:

**Target:**

`/usr/bin/flatpak-spawn`

**Launch options:**

`--host flatpak run --branch=stable --arch=x86_64 net.retrodeck.retrodeck`

This should now be enough for you to launch RetroDECK.
