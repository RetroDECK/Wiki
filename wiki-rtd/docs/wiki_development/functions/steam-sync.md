# Steam Sync (Steam-Shortcuts Integration)

RetroDECK supports synchronizing your ES-DE “favorite” games with Steam ROM Manager (SRM), adding them as Steam shortcuts so you can launch them directly from your Steam library. The sync logic lives in the shell script `functions/steam_sync.sh`.  

---

## Script: `functions/steam_sync.sh`

This script scans RetroDECK’s gamelists for user-marked favorites and builds a manifest used by SRM to import (or remove) games into Steam. 

The `steam_sync.sh` script in RetroDECK automates the process of exporting your curated list of retro games from ES-DE to Steam, maintaining a clean, up-to-date Steam library that reflects your favorites. Through manifest diffing, selective updating, and integration with SRM, Steam Sync provides a powerful yet unobtrusive way to merge retro gaming and Steam workflows.

### What it does

Searches through all ES-DE gamelists across all supported systems. 

For each game marked as “favorite”, verifies that the ROM/file exists in the `roms/` directory before including it in the manifest (to avoid stale or removed ROM entries).

Builds a JSON manifest of favorites, where each entry includes:  
  - A `title` (the game name),  
  - A `target` (e.g. “flatpak”),  
  - A `launchOptions` command to launch RetroDECK with that ROM. 

Compares the newly generated manifest against any existing manifest. 

Determines changes:  

  - New games to add,  
  - Games removed from favorites → to remove from Steam,  
  - If no favorites remain, optionally purge all synced entries. 
  
Runs SRM commands to add or remove shortcuts based on the diff.

Therefore the script ensures Steam reflects the user’s current favorites in ES-DE, avoiding duplicate additions or stale entries.

---

## How to Use Steam Sync in RetroDECK

| Step | Action |
|------|--------|
| 1 | In ES-DE, mark games as favorites (🌟) press the “favorite” button in the UI.  |
| 2 | Open the RetroDECK Configurator → **Steam Tools** → Enable **Automatic Steam Sync** *or* choose **Manual Steam Sync**. |
| 3 | If Automatic: exit RetroDECK (the sync runs on quit). If Manual: trigger the sync yourself. The script will scan favorites and update Steam accordingly. |
| 4 | Once sync completes, restart or reload Steam so that new shortcuts appear in your library. |
| 5 | To remove synced games and un-favorite them in ES-DE, then run Steam Sync again. The script will detect removed entries and instruct SRM to remove them. |
| 6 | Optional: If something went wrong (bad shortcuts, corrupted manifest), use the **Purge Steam Sync Shortcuts** tool via Configurator to wipe all synced entries, then re-sync. |

---

## Under the Hood — What the Script Actually Does

- Ensures SRM configuration is initialized if not present.
- Walks through each system folder in `ES-DE/gamelists/`. Skipping cleanup folders and systems without gamelist files. 
- For each favorite entry (`<game favorite="true">`), extracts the path, ensures the corresponding ROM exists under `roms/<system>/`, then adds a JSON object to a new manifest.
- Uses JSON manipulation (via `jq`) to build a manifest file, compare with previous manifest, and detect additions or removals.
- Delegates to SRM via CLI to add or remove Steam shortcuts accordingly. 

---

## Features & Improvements (as of Steam Sync 2.0)

- Sync can run automatically on exit or manually at any time.
- More efficient manifest comparison: only changed items (added or removed) are synced, rather than rebuilding the entire library every time.
- A “Purge” function: completely removes all synced shortcuts if something goes wrong, allowing a clean restart.

---

## Important Notes & Limitations

- Filenames containing certain “unsafe” characters (like `/`, `\`, `<`, `>`, `'`, `*`) may break Steam-sync or cause SRM parsing issues.
- After syncing, you must restart or reload Steam for new shortcuts to appear — RetroDECK cannot force-restart Steam automatically.
- If you move or rename ROM files after syncing, the shortcuts may become invalid — a fresh sync is recommended.  
- The sync only includes games marked as favorite in ES-DE; non-favorites are ignored (unless later favorited and synced).  
- 
---
