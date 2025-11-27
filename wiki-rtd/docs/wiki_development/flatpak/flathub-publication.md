# RetroDECK Flathub Publication

<img src="../../../wiki_images/flatpak/flathub-logo.svg" width="100">

## Process to Publish

1. **Update Metainfo**: On cooker, ensure the metainfo is updated with the latest changes and today's date.

2. **Build RetroDECK**: After merging to the main branch, start a Build RetroDECK workflow on the main branch.

3. **Test Main Build**: Once the main build is complete, test it. If it passes, proceed to the next step.

4. **Flathub Publish Workflow**: Run the Flathub publish workflows. This will create a new branch on Flathub's repository.

5. **Open PR on Flathub**: Go to Flathub and open a Pull Request (PR) from the new branch against the master branch.

6. **Wait for Test Build**: Wait for Flathub to produce its test build through the build bot.

7. **Test Build**: The build bot will comment with a command to install and test the build. Test it once more.

8. **Merge PR**: Merge the PR into the main branch.

9. **Check Build Progress**: Go to the Flathub buildbot website, search for the app `net.retrodexk.retrodeck` or check the recent builds on the homepage, and monitor the build progress.

10. **Publish Build**: Once the build is finished, press the "Publish" button on the top right corner (you must log in with GitHub to see it).

11. **Wait for Store Refresh**: Wait for Flathub's store to refresh, which could take up to two hours.
