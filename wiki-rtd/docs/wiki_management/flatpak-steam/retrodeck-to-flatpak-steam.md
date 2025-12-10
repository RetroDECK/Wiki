# Adding RetroDECK to Steam (Flatpak Version)

<img src="../../../wiki_images/logos/flatpak-logo.svg" width="75">


RetroDECK can be added to the Steam Flatpak version using the **RetroDECK Configurator**, just like with the regular installation. However, due to the sandboxing restrictions of Flatpak, additional steps are required to allow Steam to launch other Flatpaks.

**Note:**
RetroDECK always recommends using the non-Flatpak native version for the best compatibility.

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

### Add RetroDECK

If the necessary permissions are granted, navigate to the RetroDECK Configurator, add RetroDECK to Steam and/or enable synchronization of 🌟 Favorites 🌟 with SRM.

Both should function as expected.
