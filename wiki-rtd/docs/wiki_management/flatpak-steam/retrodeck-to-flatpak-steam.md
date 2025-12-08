# Adding RetroDECK to Steam (Flatpak Version)

<img src="../../../wiki_icons/pixelitos/steam.png" width="75">

RetroDECK can be added to the Steam Flatpak version using the **RetroDECK Configurator**, just like with the regular installation. However, due to the sandboxing restrictions of Flatpak, additional steps are required to allow RetroDECK to launch other Flatpaks.

**Note:**  
RetroDECK always recommends using the non-Flatpak native version for the best compatibility.

---

## Steam Flatpak Version

<img src="../../../wiki_images/logos/flatpak-logo.png" width="50">

If you're using the [Steam Flatpak](https://flathub.org/apps/com.valvesoftware.Steam), some extra configuration is necessary to ensure proper functionality. 

**Warning:** 
 
This method grants more access to the Flatpak, as it bypasses certain sandbox restrictions. Flatpaks typically cannot execute system commands outside of the sandbox, so enabling this permission exposes the Steam Flatpak to more system-level actions.

---

## Adding the Necessary Permissions

To allow the Steam Flatpak to launch other Flatpaks, it requires a special permission called `org.freedesktop.Flatpak`. This permission can be added either via **Flatseal** or through the terminal.

---

### Method 1: Using Flatseal

1. Install [Flatseal](https://flathub.org/apps/com.github.tchx84.Flatseal) from Flathub, if you don't already have it.
2. Open **Flatseal**.
3. In the left sidebar, find and select **Steam**.
4. Scroll down to the **Session Bus** section.
5. Click the **+** button to add a new permission.
6. Paste `org.freedesktop.Flatpak` into the input box.
7. Close **Flatseal** and launch **Steam**. RetroDECK should now be able to run other Flatpaks.

---

### Method 2: Using the Terminal

Alternatively, you can add the permission directly from the terminal with the following command:

`flatpak --user override --talk-name=org.freedesktop.Flatpak com.valvesoftware.Steam`

---

## Configuring RetroDECK in Steam Flatpak

Once RetroDECK has been added to Steam, follow these steps to configure it properly:

1. Right-click the RetroDECK entry in Steam.
2. Change the **Target** and **Launch Options** as follows:

**Target:**

`/usr/bin/flatpak-spawn`

**Launch options:**

`--host flatpak run --branch=stable --arch=x86_64 net.retrodeck.retrodeck`

After making these changes, you should now be able to launch RetroDECK directly from Steam.

--- 