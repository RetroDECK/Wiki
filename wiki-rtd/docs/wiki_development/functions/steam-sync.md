# Steam Sync Process 

**Prerequisite:** This procedure assumes that a previous Steam Sync operation has already been performed.

The Steam Sync routine synchronizes RetroDECK ES-DE marked “favorites” with Steam shortcuts. It generates a temporary manifest of the current favorites, compares it against the existing manifest, and updates Steam shortcuts accordingly using SRM (Steam ROM Manager).

## Detailed Steps

1. **Collect Favorites**
   - Scan all RetroDECK gamelists across every system.
   - Compile a comprehensive list of every entry marked as a *favorite*.

2. **Generate Shortcut JSON Objects**
   - For each favorite, create a JSON object that defines a Steam shortcut.
   - The shortcut command follows the pattern:
     ```
     flatpak run net.retrodeck.retrodeck -s "<ROM_PATH>"
     ```
   - This leverages RetroDECK’s `-s` flag to launch the specified ROM directly from Steam.

3. **Write Temporary Manifest**
   - Serialize the collection of JSON objects into a new temporary file (e.g., `favorites_new.json`).

4. **Compare Manifests**
   - Perform a diff between `favorites_new.json` and the existing favorites manifest (`favorites_current.json`).
   - **If identical:** No changes detected → terminate the sync process.
   - **If different:** Proceed to identify additions and removals.

5. **Detect Removed Favorites**
   - Determine which entries exist in `favorites_current.json` but are absent from `favorites_new.json`.
   - Create a secondary temporary manifest (`favorites_removed.json`) containing only these removed entries.

6. **Update Steam Shortcuts via SRM**
   - **Remove obsolete shortcuts:**  
     Load `favorites_removed.json` and invoke SRM with the *remove* operation to delete the corresponding Steam shortcuts.
   - **Add new shortcuts:**  
     Load `favorites_new.json` and invoke SRM with the *add* operation to create shortcuts for newly‑favorited games.

7. **Finalize**
   - Replace `favorites_current.json` with `favorites_new.json`, making the new manifest the authoritative source.
   - Delete all auxiliary temporary files (`favorites_new.json`, `favorites_removed.json`, etc.).

### Notes

- All file paths are relative to RetroDECK’s data directory unless otherwise specified.
- Ensure SRM is configured correctly to recognize the JSON schema used for shortcut definitions.
- This process can be automated via a script or scheduled task to keep Steam shortcuts in sync with RetroDECK favorites continuously.
