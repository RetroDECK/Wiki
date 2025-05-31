# How to update RetroDECK's components

## Steam Rom Manager

**Type:** pure flatpak module (bound to be changed)

This is a flatpak module so it will just be compiled at each build (boud to be outsourced before 0.9.0b).
Follow the link in the module comments and you will reach the original flathub repo of the project.
Their manifest is in json so you can convert it by using for example with https://jsonformatter.org/json-to-yaml.
The we can use a tool like `Meld` to compare the original incoming manifest with RetroDECK's one.

Check if the header is similar to ours and take note of the differences, if something is added we might have to add it as well. After just delete it. [image1]
What usually change is the sha and the url of the module, but sometimes the module instructions itselves may change like in this case [image2].
So let's update our module and here's the results [image3]: in this case I removed the `>-` that is just garbage introduced by the converter. I replaced `/app` with `${FLATPAK_DEST}` but this is not actually needed, just more in line with the flatpak manifest standards, and got rid of all the `metainfo.xml` and `.desktop` files as they are needed for the original manifest and cannot be included into ours (in any case the flatpak builder will discard them as they are not called net.retrodeck.retrodeck).

In this case the original manifest header got an env variable `IN_FLATPAK: 1` but to not make it interfere with the rest of the RetroDECK modules we moved it in the Steam Rom Manager module itself.
Here is the comparsion results after the edits [image4].
Do the same for the component's libraries, and be aware that if a library is shared with other modules will be in the common region (up).
Paste the new edited manifest over ours, check the changes and commit it like `SRM: module updated`.

**NOTE:** it's a good practice to commit every single module update and not in bulk as if something is wrong is easier to just revert the single commit.

## RetroArch

**Type:** AppImage (binary) module

RetroArch is an AppImage binary module, means that we are not compiling it, but just extracting the AppImage in our filesystem.
So what I usually do is to check if there is a newer version of the AppImage by following the link, change the url to point to the newer version and calculate the sha by downloading it from that link in this way:

cd /tmp
mkdir modules
cd modules
wget https://buildbot.libretro.com/stable/1.19.1/linux/x86_64/RetroArch.7z
sha256sum RetroArch.7z 
f98e954e99aef7b4b1a3334d710856b997c3f97c5451d33af9e5c88bf63213f8  RetroArch.7z
rm RetroArch.7z

Then I copy and paste the sha.
Same for the other components (execpt the nightly cores that are automated).
**Note:** if there is a placeholder such as:
`sha256: SAMEDUCKSHAPLACEHOLDER`
It means that this module is automatically updated (rolling updates or nightlies usually).

## PPSSPP, Dolphin, MelonDS, Solarus
**Type:** internally outsourced module
These modules are internally outsourced, it means that the actual module build is not happening on RetroDECK's manifest but on a repo in our organization.
This repo is producing a flatpak artifact and publish it as a release: we grab this latest release artifact and inject it with proper manifest modules, so this part of the RetroDECK manifest is static, and should not be edited.
We are doing this because is nonsense to build the same versions at every build, multiply this for all the modules and you understand why we drastically reduced the building time.

So the change is not happening here but in the outsourced module: let's follow the link to the manifest in our organization as indicated on the module itself: https://github.com/RetroDECK/org.ppsspp.PPSSPP

First let's `git clone` the repo.

I prepared a handy script named `update_from_upstream.sh` that is merging the original manifest in our PPSSPP manifest, so just run that, review the changes and push it.
A build will start and a new release will happen, nothing else to do here.

**Note:** when doing the update double check that the manifest header didn't brought something new, if so we might have to update RetroDECK's header, yes, the main RetroDECK manifest, not this module's one (header is everything in the manifest before `modules:` line).

## PCSX2, RPCS3, Cemu, Xemu

**Type:** AppImage (binary) module
Same as RetroArch: just check from the link the latest AppImage on the website and update url and sha.

Commit example: `PCSX2: updated to v2.1.231`.

## Primehack
**Type:** internally outsourced module
Should be identical as `PPSSPP & friends` as well but we don't update this until this PR is merged

> commit: 81bfb9686afd2d190134b44dd72d3cee876fe2ab # This commit refers to the PR 166: https://github.com/shiiion/dolphin/pull/166, but has been reworked in PR 118, https://github.com/shiiion/dolphin/pull/118 please change it when it's approved

If we update now we will lose our custom patches made by TheDrifter that makes Primehack to not overwrite Dolphin.

## Duckstation
**Type:** AppImage (binary) module
Due to a licence change this module is now legacy, we cannot update it without breaking the licence itself, so no action needed as it's poiting to the latest clone of the latest "free" release on our organization.

## Vita3K
**Type:** binary module
This is a pure binary module (not extracted from AppImage), this manifest is just taking the latest artifacts and extract them in our virtual filesystem.
No need to be updated as for the experimental nature of this emulator is a rolling release.

## GZDoom

**Type:** internally outsourced module

Same as `PPSSPP & friends` but we need to manually update the .pk3 files as written in the description.
It's written to update even the PK3 but maybe this was valid only before we outsourced the module, let's see...
**Note:** for some reason on the original manifest the command is `gzdoom` but with that the flatpak builder is breaking so we keep our `gzdoom.sh`. 

## MAME

**Type:** internally outsourced module

This is techincally as `PPSSPP & friends` but not yet there, this was the first prorotype of outsourced module and don't produce an AppImage.
Maybe one day we might align it to newer logics but for the moment the procedure is the following:

- clone the RetroDECM/MAME repo
- open the file mame-module.yml
- follow the written link: https://github.com/flathub/org.mamedev.MAME/blob/master/org.mamedev.MAME.yaml
- similarly from what we did with `SRM` compare our modules with the upstream one (remember Meld?).
- **IMPORTANT:** don't get rid of `USE_QTDEBUG=0` as we need it for various matter such as we don't want all the unuseful QT debug interface and in any case that was built on an older QT that we don't have and the manifest build will fail
- Avoid inserting the icons as we don't need them now (we can change this in the future)
- Avoid inserting `metainfo` and `.desktop` (I explained why in the SRM module).
- Apply the manifest changes and commit

## PortMaster

**Type:** binary module

This is a pure binary module (not extracted from AppImage), this manifest is just taking the latest PortMaster build and extract it in our virtual filesystem.
No need to be manually updated.

## ES-DE

**Type:** internally outsourced

This is for sure the most complex component to update.
This repo must be cloned: https://github.com/RetroDECK/ES-DE.
Then the `update_from_upstream.sh` script should be updated with the proper branch or tag where to get the changes from. Note: master is usually the alpha branch, so stick with something stable (usally Leon tells us).
There are many critical files that contains our customizations, we have to be **VERY CAREFUL** during the merge to import the new stuff from ES-DE but keeping/adapting our own edits.

## Ruffle

**Type:** binary module

Just update latest release `url` and `sha`

## Summary 

Ok, we updated all the modules, now we have to wait that all the outsourced repos finish to build our artifacts and do the needed releases.
Once they are done we can push our commits ot the main RetroDECK manifest and produce an updated cooker build, but beware: if we do this before all the outsourced modules are finished to be built we will have an outdated build and we need to start a new one (and MAME takes 1h50~).

After this is not actually finished as we need to test all the updated emulators and check if the config files are still valid as sometimes they bring breaking changes and the emulator must be reconfigured and the related config file updated on the RetroDECK main repo.

Moreover some builds might fail and have to be troubleshooted or reverted to the previous version if really broken.

But congratulation, the first big step is done!

**Note:** About updating emulator's configuration files after the build testing: always Meld compare your updated config file with the one in the repo, never ever upload a raw conig file as it will bring your own user config without notice!
Some config files for example are bringing stuff like your last window position on your screen or similar stuff that we don't want to bring in our builds.

### I lost track of which repos I updated

No worries, just go to check all the repositories here: https://github.com/orgs/RetroDECK/repositories and see which ones are recently updated.
The open them, go into the Actions tab and be sure the latest build is green.
