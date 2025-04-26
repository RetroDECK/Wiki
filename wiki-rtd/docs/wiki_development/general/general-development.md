# Development General Notes

This is WIP

| Name                    | Link                                            |
|-------------------------|------------------------------------------------|
| Github: Service Status  | [Link](https://www.githubstatus.com/)          |
| Flathub: Service Status | [Link](https://status.flathub.org/)            |
| Flathub: Buildbot       | [Link](https://buildbot.flathub.org/#/apps/net.retrodeck.retrodeck) |


## Cooker builds

Every time a commit or a PR is done, a GitHub action automatically compiles the snapshot with the latest changes and publish them on the [cooker repository](https://github.com/XargonWan/RetroDECK-cooker).
This can be publicly tested and if it's stable will be merged in the main branch creating a new release..


## How to build RetroDECK?

Git clone the latest cooker branch or any of the cooker feature branches and run.

`./build-locally.sh`

### Feature branches

Sometimes adding a new big component to RetroDECK warrants a feature branch from that could later be merged into the main cooker branch to keep the issues related to the feature contained.
Talk to the RetroDECK development team if you have a need to make a new feature branch for a new bigger component such as adding a new system, emulator or a major feature.

## Debug Mode

Read more over at [Debug Mode](debug-mode.md).

## Manual installation instructions
This method is usually for the beta/cooker testers:
- Download the RetroDECK.flatpak from the [release page](https://github.com/XargonWan/RetroDECK/releases) or from the [cooker release page](https://github.com/XargonWan/RetroDECK-cooker/releases) (be sure to download the correct version, check the date as they're not ordered unfortunately).
- `cd` where the downloded file is located
- `flatpak install RetroDECK.flatpak` or whatever the filename is

If this doesn´t work:
- cd into your download location
- `flatpak install RetroDECK.flatpak`
- Run it from the start menu or, alternatively, from the terminal by typing `flatpak run net.retrodeck.retrodeck`
- Then the first setup will guide you in the first steps, **please read all the messages carefully** as the rom directory must not be edited in EmulationStation

### Updating instructions
- uninstall the previous version with `flatpak uninstall net.retrodeck.retrodeck`
- follow installation instructions
- [OPTIONAL] In case of issues it's suggested to remove `~/.var/app/net.retrodeck.retrodeck` and run `flatpak run net.retrodeck.retrodeck --reset`, but this will reset the application configs, please backup your data.
NOTE: this will not be needed after v`0.4.0b`.

## Managing RetroDECK flatpak file

Install RetroDECK from flatpak file:

```
flatpak install RetroDECK.flatpak
```

Run RetroDECK:

```
flatpak run net.retrodeck.retrodeck
```

Uninstall RetroDECK:

```
flatpak uninstall net.retrodeck.retrodeck
```

## Making your own ES-DE theme
Please check the following link link over ES-DE <br>
[Theme Development ](https://gitlab.com/es-de/emulationstation-de/-/blob/master/THEMES-DEV.md)

## Old build instructions

```
cd ~
git clone --recursive https://github.com/XargonWan/RetroDECK.git
cd RetroDECK
git submodule init
git submodule update
```

install `flatpak flatpak-builder p7zip-full` with your distro's package manager, then:

```
flatpak remote-add --if-not-exists Flathub https://flathub.org/repo/flathub.flatpakrepo
flatpak install --user -y org.kde.Sdk//5.15-21.08 org.kde.Platform//5.15-21.08 io.qt.qtwebengine.BaseApp/x86_64/5.15-21.08 org.freedesktop.Sdk.Extension.llvm13 org.freedesktop.Platform.ffmpeg-full/x86_64/21.08
```

To build the stable release:

```
flatpak-builder --user --install --install-deps-from=flathub --install-deps-from=flathub-beta --force-clean --repo=local ~/RetroDECK/retrodeck-main ~/RetroDECK/net.retrodeck.retrodeck.yml
flatpak build-bundle local ~/RetroDECK.flatpak net.retrodeck.retrodeck
```

Or alternatively, to build the cooker (experimental) release:

```
git checkout cooker
flatpak-builder --user --install --force-clean --repo=local ~/RetroDECK/retrodeck-cooker ~/RetroDECK/net.retrodeck.retrodeck.yml
flatpak build-bundle local ~/RetroDECK.flatpak net.retrodeck.retrodeck
```



