# RetroDECK Flathub Publication

<img src="../../../wiki_images/flatpak/flathub-logo.svg" width="100">

## Process to Publish

| Step | Task | Description |
|------|-------|-------------|
| 1 | Update Metainfo | On Cooker, update the metainfo file with the latest changes and the current date. |
| 2 | Build RetroDECK | After merging into the **main** branch, trigger a **Build RetroDECK** workflow on that branch. |
| 3 | Test Main Build | When the main build finishes, test it. If it passes, continue to the next step. |
| 4 | Run Flathub Publish Workflow | Execute the Flathub publish workflows, which will generate a new branch in Flathub’s repository. |
| 5 | Open PR on Flathub | On Flathub, open a Pull Request (PR) from the newly created branch against the **master** branch. |
| 6 | Wait for Test Build | Wait for Flathub’s build bot to generate a test build for the PR. |
| 7 | Test Build | Use the installation command posted by the build bot to install and test the build again. |
| 8 | Merge PR | After successful testing, merge the PR into the **master** branch. |
| 9 | Check Build Progress | Visit the Flathub buildbot site, search for `net.retrodexk.retrodeck` or view recent builds, and monitor build progress. |
| 10 | Publish Build | Once the build completes, click the **Publish** button (GitHub login required). |
| 11 | Wait for Store Refresh | Allow up to two hours for the Flathub store to refresh and display the newly published build. |
| 12 | Public Release | RetroDECK is now officially released and available to the public on Flathub. |
