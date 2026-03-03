# How-to: Update RetroDECK

<img src="../../wiki_icons/pixelitos/folder-blue-sync.png" width="75" alt="">

There are several ways to keep RetroDECK up to date. The recommended method is through your distribution’s software manager, but alternative options are also available.

---

## Software Manager (Recommended)

Most distributions automatically manage updates for Flatpak applications, including RetroDECK.

**Steam Deck (Optional):** Switch to **Desktop Mode** (`Steam Button` → **Power** → **Switch to Desktop**)

- Open **Discover** or your preferred software manager.
- Navigate to the **Updates** section.
- Review available updates.
- Select **Update** or **Update All** to install them.

---

## Terminal

You can update all installed Flatpaks, including RetroDECK, using the command line:  `flatpak update -y` 

---

## Steam Deck - Decky Loader: AutoFlatpaks

If you have **Decky Loader** installed along with the **AutoFlatpaks** plugin, you can update RetroDECK directly from **Game Mode** without switching to Desktop Mode.

For additional details, see: [Software Recommendations](software-recommendations.md)

---

## FAQ: Updating

| Question                                   | Answer |
|--------------------------------------------|--------|
| **Updating After a Long Time**             | If you have not updated RetroDECK for an extended period (approximately one year or more), it is recommended to **uninstall and reinstall** RetroDECK through your software manager rather than performing an in-place upgrade. |
| **Updating Specific Systems in RetroDECK** | Individual emulators or system components cannot be updated independently within RetroDECK. Updates to these components are only provided as part of new RetroDECK releases. |
| **When I update what happens?**            | During an update, the application files in `~/.local/share/flatpak/app/net.retrodeck.retrodeck/current/active/files/` or `/var/lib/flatpak/app/net.retrodeck.retrodeck/current/active/files/` are replaced with the new version, in accordance with Flatpak’s update mechanism.<br><br>Additional changes, bug fixes, or new content may also be applied within `~/.var/app/net.retrodeck.retrodeck/` or the RetroDECK user data directory.<br><br>User data is not removed during updates. It is only modified when necessary to resolve issues or introduce new features that do not already exist. |

---
