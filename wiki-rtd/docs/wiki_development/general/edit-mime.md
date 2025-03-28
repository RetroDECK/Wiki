# Editing MIME Types

MIME Types used by RetroENGINE

## How-to: Edit

Find the `net.retrodeck.retrodeck.mime.xml` and edit the file.

**User:** `~/var/lib/flatpak/exports/share/mime/packages/net.retrodeck.retrodeck.mime.xml`
**System:** `/var/lib/flatpak/exports/share/mime/packages/net.retrodeck.retrodeck.mime.xml`

Run after the edits:

**User:** `update-mime-database` `~/.local/share/flatpak/exports/share/mime`
**System:** `update-mime-database` `/var/lib/flatpak/exports/share/mime/`
