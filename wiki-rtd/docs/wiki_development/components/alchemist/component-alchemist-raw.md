The Alchemist

The Alchemist is a magician. One who, when given the proper instruction, can transmute one or more base source ingredients into the perfect gem of a component artifact.

Alchemy - noun - "A power or process that changes or transforms something in a mysterious or impressive way"

HEREBY BE WARNED

Alchemy is, by definition, delicate. The ingredients must be known and pure, and the recipe must be exact. Any deviation from this process can be disasterous.


The Recipe:

All alchemic recipes will have at least four parts:

- The name (The root key of the component_recipe.json file, indicating the name of the component. The artifact name and some source paths (such as the name of the directory in the components repo) are derived from this name, so it should be consistent across the component)
- The source (All components will have one source, where from files are pulled in order to be stored in the final artifact)
- The asset (All component sources will have at least one asset, that being the file(s) being pulled from the source ingredient)
- Extras (All sources will, at minimum, include extras such as the component launcher, component manifest and shipped default config. Other extras may include prepared symlinks or other locally-available files that do not come from downloaded sources)

Other optional inclusions are:

- Additional sources (If a component needs more than one download to include all needed files, or if the original source is a nested archive needing more than one extraction pass, these will be listed as additional sources)
- Additional assets (Every source has its own set of assets, directing the recipe to pull specific files from specific sources)
- Libraries (Most sources will need additional libraries included to support it in the base Flatpak environment. The hunt_libraries.sh script can be used to bootstrap a list of requirements for every binary)


The Ingredients:

https://en.wikipedia.org/wiki/Garbage_in,_garbage_out

In order to gain a perfect output, the input must also be equally known. Pulling input from a specific moment in time is the only way to accomplish this, as sources that change over time cannot be reliably predicted.
Pulling from dynamic sources using "latest" versions is therefore a recipe for disaster, as the source ingredients are changing without proper review, and hence cannot be guaranteed to be compatible with the recipe.

All ingredients must be plucked from a specific release in order to maintain quality, and to avoid unknown and unpredictable changes into the final artifacts. In order to simplify ingredient version management, 
all "stable" sources are listed in the desired_versions.sh file. These listed versions can be used as placeholders in component recipes, in an effort to reduce the number of changes needed when a new "stable" version is found.

For all examples here, the alchemist.sh script is called from the path '.../components' as cloned from https://github.com/RetroDECK/components.git The actual script location is arbitrary, but the location the script is called from is important.
If it is called from inside of a git repo, the repo root will be assigned to the variable '$REPO_ROOT' for processing use, otherwise the '$REPO_ROOT' will be defaulted to the directory the alchemist.sh script is called from.

Here is an example recipe fragment containing only a single downloaded source.

{
  "azahar": {
    "source_url": "https://github.com/azahar-emu/azahar/releases/download/{VERSION}/*.AppImage",
    "source_type": "github-release",
    "version": "$AZAHAR_DESIRED_VERSION",
    "extraction_type": "appimage"
  }
}

Breaking down this ingredient gives us the following information used by the Alchemist:

JSON root key: 'azahar' - The Alchemist now knows the name of this component, used in various other stages of the artifact building as well as creating the reusable placeholder variable '$COMPONENT_NAME'.
source_url: '{SOURCE_URL}' - The URL / path to be downloaded/copied for this component source. Acceptable URLS include a direct HTTP(S) link, HTTP(S) redirect links, GitHub repo URL or relative/absolute local filesystem paths.
                             The URL can use the {VERSION} placeholder, which will be replaced with the contents of the JSON "version" key.
source_type: '{SOURCE_TYPE}' - The download type, which dictates which downloader plugin is used to aquire the source.
version: '{VERSION}' - The specific version to be grabbed from the source, used in GitHub release resolution or as a placeholder in a URL. For 'local' source types, if no version is needed, this value can be 'latest'.
extraction_type: '{EXTRACTION_TYPE}' - The specific type of extraction to be used on this download.

Omitted from this recipe is the optional 'dest' key, which is meant to allow for manual control over the destination of the download, if needed. If the 'dest' key is omitted or empty, the value will be defaulted to '$WORKDIR'.
Also omitted is the 'additional_sources' key, which is used to process multiple sources in the same way as the core source is. The key is an array of objects containing the same information, in the same sub-structure as the core ingredient contents.

The logic for this recipe then breaks down to:

1. The name of this component is 'azahar'.
2. The URL I should use for this download is 'https://github.com/azahar-emu/azahar/releases/download/{VERSION}/*.AppImage'.
3. The type of this download source, and therefor the downloader plugin which should be used, is 'github-release'.
4. The version of this source to be downloaded is '$AZAHAR_DESIRED_VERSION', which will be pulled from the 'desired_versions.sh' file and inserted into the '{VERSION}' placeholder in the URL.
   An example line from the desired_version.sh file for this value would be 'export AZAHAR_DESIRED_VERSION="2123.3"'
5. The path to the downloaded file is then returned to the Alchemist in the '$DOWNLOADED_FILE' variable.
6. After downloading, the extractor should use the 'appimage' extraction plugin on the downloaded file.
7. The file is extracted from the source '$DOWNLOADED_FILE' and the path to the extracted destination is then returned to the Alchemist in the '$EXTRACTED_PATH' variable.

An expansion of this recipe to include asset gathering, including files from the extracted AppImage as well as needed libraries would be:

{
  "azahar": {
    "source_url": "https://github.com/azahar-emu/azahar/releases/download/{VERSION}/*.AppImage",
    "source_type": "github-release",
    "version": "$AZAHAR_DESIRED_VERSION",
    "extraction_type": "appimage",
    "assets": [
      {
        "type": "dir",
        "source": "usr/bin",
        "dest": "bin"
      }
    ],
    "libs": [
      {
        "library": "libQt6Widgets.so.6",
        "runtime_name": "org.kde.Platform",
        "runtime_version": "6.9",
        "dest": "shared-libs"
      }
    ]
  }
}

Breaking down the new additions gives us the following information used by the Alchemist:

assets: This is an array of objects which defines what files should be gathered from the current source.
[asset type:] The 'type' key for each asset object defines if the data to be gathered is a specific file or a whole directory.
[asset source:] The source path for the desired file or directory. This path is relative to the '$EXTRACTED_PATH' variable provided from the extraction stage.
[asset dest:] The destination path for the desired file or directory. This path is relative to the '$COMPONENT_ARTIFACT_ROOT' path, so is stored in the structure that should be in the final artifact archive.
libs: This is an array of objects which defines what library files should be gathered for the current component.
[lib library:] The 'library' key for each library object defines the name of the library to be gathered. Libraries are gathered by stripping the file name down to the base extension in order to capture dynamic symlinks for compatibility. eg. Defining 'libQt6Widgets.so.6' would really gather 'libQt6Widgets.so*' from the source.
[lib runtime_name:] The optional 'runtime_name' key defines the name of the Flatpak runtime the library should be gathered from.
[lib runtime_version:] The optional 'runtime_version' key defines which version of the given Flatpak runtime the library should be gathered from.
[lib dest:] The 'dest' key defines the destination directory the library should be put in. This path is relative to the '$COMPONENT_ARTIFACT_ROOT' path.

Omitted from this recipe is the optional [lib source:] key, which defines a specific source location to gather a library from. This is to be used when libraries must come from a specific asset and cannot be pulled from a Flatpak runtime.

The logic for this recipe then breaks down to:

<Component naming, asset downloading, asset extraction logic from above>
8. Copy the full directory from '$EXTRACTED_PATH/usr/bin' to '$COMPONENT_ARTIFACT_ROOT/bin'
9. As the defined library is from a Flatpak runtime, install the defined runtime name and version if needed.
10. Gather the library 'libQt6Widgets.so.6' from the defined runtime name and version.

An expansion of this recipe to a complete version, which would result in a finalized component artifact would be:

{
  "azahar": {
    "source_url": "https://github.com/azahar-emu/azahar/releases/download/{VERSION}/*.AppImage",
    "source_type": "github-release",
    "version": "$AZAHAR_DESIRED_VERSION",
    "extraction_type": "appimage",
    "assets": [
      {
        "type": "dir",
        "source": "usr/bin",
        "dest": "bin"
      }
    ],
    "libs": [
      {
        "library": "libQt6Widgets.so.6",
        "runtime_name": "org.kde.Platform",
        "runtime_version": "6.9",
        "dest": "shared-libs"
      },
      {
        "library": "libQt6Gui.so.6",
        "runtime_name": "org.kde.Platform",
        "runtime_version": "6.9",
        "dest": "shared-libs"
      },
      {
        "library": "libQt6Core.so.6",
        "runtime_name": "org.kde.Platform",
        "runtime_version": "6.9",
        "dest": "shared-libs"
      },
      {
        "library": "libQt6Multimedia.so.6",
        "runtime_name": "org.kde.Platform",
        "runtime_version": "6.9",
        "dest": "shared-libs"
      },
      {
        "library": "libQt6Network.so.6",
        "runtime_name": "org.kde.Platform",
        "runtime_version": "6.9",
        "dest": "shared-libs"
      },
      {
        "library": "libQt6DBus.so.6",
        "runtime_name": "org.kde.Platform",
        "runtime_version": "6.9",
        "dest": "shared-libs"
      },
      {
        "library": "libQt6Concurrent.so.6",
        "runtime_name": "org.kde.Platform",
        "runtime_version": "6.9",
        "dest": "shared-libs"
      }
    ],
    "extras": [
      {
        "type": "dir",
        "source": "$REPO_ROOT/$component_name",
        "dest": "$COMPONENT_ARTIFACT_ROOT"
      }
    ]
  }
}

Breaking down the new additions gives us the following information used by the Alchemist:

libs: Additional lib objects are provided here, each is processed in the same way.
extras: This is an array of objects defining "extras" to be gathered or created for the final artifact.
[extra type:] The 'type' key for each extra object defines what kind of extra content it is.
[extra source:] The optional 'source' key is used to define a source path for the extra. The path can be either absolute or relative. If a relative path is provided, it will be expanded to '$WORKDIR/source'
[extra dest:] The optional 'dest' key is used to define a destination path for the extra. The path can be either absolute or relative. If a relative path is provided, it will be expanded to '$COMPONENT_ARTIFACT_ROOT/dest'

Omitted here is the optional [extra contents:] key, which is used to insert provided information into the destination file.

The logic for this recipe then breaks down to:

<Component naming, asset downloading, asset extraction, asset file gathering, library gathering logic from above, now with multiple library objects>
11. Copy the contents of the directory '$REPO_ROOT/$COMPONENT_NAME' to the destination '$COMPONENT_ARTIFACT_ROOT'

For this example, the contents of the '$REPO_ROOT/$COMPONENT_NAME' are:

azahar
├── component_extras.sh
├── component_functions.sh
├── component_launcher.sh
├── component_libs.json
├── component_manifest.json
├── component_prepare.sh
├── component_recipe.json
├── rd_config
│   └── qt-config.ini
└── recipe.sh

As the contents of this directory are copied to '$COMPONENT_ARTIFACT_ROOT', combined with the actions of other asset and library gathering,
the final structure of the '$COMPONENT_NAME-artifact' directory, which is now ready to be compressed into the final artifact:

azahar-artifact
├── bin
│   ├── azahar
│   └── qt.conf
├── component_extras.sh
├── component_functions.sh
├── component_launcher.sh
├── component_libs.json
├── component_manifest.json
├── component_prepare.sh
├── component_recipe.json
├── rd_config
│   └── qt-config.ini
├── recipe.sh
└── shared-libs
    └── org.kde.Platform
        └── 6.9
            ├── libQt6Concurrent.so -> libQt6Concurrent.so.6
            ├── libQt6Concurrent.so.6 -> libQt6Concurrent.so.6.9.3
            ├── libQt6Concurrent.so.6.9.3
            ├── libQt6Core.so -> libQt6Core.so.6
            ├── libQt6Core.so.6 -> libQt6Core.so.6.9.3
            ├── libQt6Core.so.6.9.3
            ├── libQt6DBus.so -> libQt6DBus.so.6
            ├── libQt6DBus.so.6 -> libQt6DBus.so.6.9.3
            ├── libQt6DBus.so.6.9.3
            ├── libQt6Gui.so -> libQt6Gui.so.6
            ├── libQt6Gui.so.6 -> libQt6Gui.so.6.9.3
            ├── libQt6Gui.so.6.9.3
            ├── libQt6Multimedia.so -> libQt6Multimedia.so.6
            ├── libQt6Multimedia.so.6 -> libQt6Multimedia.so.6.9.3
            ├── libQt6Multimedia.so.6.9.3
            ├── libQt6Network.so -> libQt6Network.so.6
            ├── libQt6Network.so.6 -> libQt6Network.so.6.9.3
            ├── libQt6Network.so.6.9.3
            ├── libQt6Widgets.so -> libQt6Widgets.so.6
            ├── libQt6Widgets.so.6 -> libQt6Widgets.so.6.9.3
            └── libQt6Widgets.so.6.9.3

Thus ends the processing for this specific component. The Alchemist has taken an array of data from various sources, processed it in a structured method and generated a predictable output. Individual keys can be updated or changed
as needed, making future updates straightforward and controlled.


Alchemist Process Abstraction:

At a high level, the Alchemist processes information in this loop:
1. Read component_recipe.json file.
2. Read component name from root key.
3. Generate set of parent objects to be processed.
   - Each parent object contains download sources, extractions commands, asset gathering instructions, library gathering instructions and extras gathering instructions.
4. Process each object sequentially.
5. Compress contents of '<component name>-artifact' directory for storage.

Understanding how the parent objects are gathered and processed is an important concept, expecially for nested archives. By definition, a nested archive creates a new archive which will also need to be extracted.
This process can be controlled through the ordering of the 'additional_sources' array. The 'additional_sources' array is an array of objects that contains the same keys and arrays as the "core" recipe.
Each object, starting with the "core" object are processed in the order they are listed in the recipe. This way, one additional source object can download an extract a nested archive, and a second additional source object
can then use data from the first object, as it was processed first.

Here is an example of a simplified recipe showing extracting a nested archive:

{
"retroarch": {
    "source_url": "https://buildbot.libretro.com/stable/{VERSION}/linux/x86_64/RetroArch.7z",
    "source_type": "http",
    "version": "1.21.0",
    "extraction_type": "archive",
    "additional_sources": [
      {
        "source_url": "RetroArch.7z-extracted/RetroArch-Linux-x86_64/RetroArch-Linux-x86_64.AppImage",
        "source_type": "local",
        "extraction_type": "appimage",
        "assets": [
          {
            "type": "dir",
            "source": "usr/bin",
            "dest": "bin"
          }
        ]
      },
      {
        "source_url": "https://buildbot.libretro.com/stable/{VERSION}/linux/x86_64/RetroArch_cores.7z",
        "source_type": "http",
        "version": "1.21.0",
        "extraction_type": "archive",
        "assets": [
          {
            "type": "dir",
            "source": "RetroArch-Linux-x86_64/RetroArch-Linux-x86_64.AppImage.home/.config/retroarch/cores",
            "dest": "cores"
          }
        ]
      }
    ]
  }
}

This recipe therefor contains three "source" objects to be processed:
  1. An archive, downloaded from an internet URL.
  
  {
    "source_url": "https://buildbot.libretro.com/stable/{VERSION}/linux/x86_64/RetroArch.7z",
    "source_type": "http",
    "version": "1.21.0",
    "extraction_type": "archive"
  }

  2. An appimage file, extracted from a local source, with an asset to gather.
  
  {
    "source_url": "RetroArch.7z-extracted/RetroArch-Linux-x86_64/RetroArch-Linux-x86_64.AppImage",
    "source_type": "local",
    "extraction_type": "appimage",
    "assets": [
      {
        "type": "dir",
        "source": "usr/bin",
        "dest": "bin"
      }
    ]
  }

  3. Another archive, downloaded from an internet URL, also with an asset to gather.
  
  {
    "source_url": "https://buildbot.libretro.com/stable/{VERSION}/linux/x86_64/RetroArch_cores.7z",
    "source_type": "http",
    "version": "1.21.0",
    "extraction_type": "archive",
    "assets": [
      {
        "type": "dir",
        "source": "RetroArch-Linux-x86_64/RetroArch-Linux-x86_64.AppImage.home/.config/retroarch/cores",
        "dest": "cores"
      }
    ]
  }

The order these would be processed is as follows:
  Object 1. The archive 'RetroArch.7z' is downloaded from the internet and placed into '$WORKDIR'. It is then extracted as an 'archive', into the default destination directory of '$WORKDIR/RetroArch.7z-extracted'.
     As this source has no other actions (no asset / lib / extra gathering), the Alchemist moves on to the next object.
  Object 2. The local appimage '$WORKDIR/RetroArch.7z-extracted/RetroArch-Linux-x86_64/RetroArch-Linux-x86_64.AppImage' (as extracted from the previous step) is then extracted, and the defined asset '$WORKDIR/$EXTRACTED_PATH/usr/bin/' is gathered to '$COMPONENT_ARTIFACT_ROOT/bin/'.
  Object 3. A wholly new archive is downloaded from the internet, extracted, and the asset '$WORKDIR/$EXTRACTED_PATH/RetroArch-Linux-x86_64/RetroArch-Linux-x86_64.AppImage.home/.config/retroarch/cores/' is gathered to '$COMPONENT_ARTIFACT_ROOT/cores/'

While this process of extracting a nested archive as separate objects may appear to be overly verbose,
it is necessary in order to maintain control over the files being manipulated, and avoids blob-matching issues such as if a parent archive has multiple extracted files with the same extensions.
This method of multiple object processing is also useful as different classes of files (assets / libs) may come from multiple different sources. In this structure,
every object (the "core" recipe object and any listed in 'additional_sources') can have its own set of asset gathering and library gathering instructions as needed. This gives the Alchemist the level of control needed to produce consistent results.


Valid Key Value Reference:

.<root key>
  The root key of the JSON file is the component name. The value is assigned to the reusable variable '$COMPONENT_NAME'.

.<root key>.source_url
  This value can be any HTTP(S) URL, including direct download links (including redirects, although the {VERSION} placeholder is used in the resolved URL), GitHub repo URLs or local relative/absolute paths for local sources.
  For local sources, if a relative path is provided it will be expanded into '$WORKDIR/<source>', complete with {VERSION} placeholder replacements if used in the path.

.<root key>.source_type
  Currently supported ingredients (file sources) are:

    - http (Normal web downloads. Web redirects are supported in the event that direct download links are not available)
    - github-release (Releases hosted on GitHub, where the {VERSION} can be determined using the GitHub API or will be replaced directly by the 'version' recipe key value)
    - git (Cloning of a desired git repo)
    - flatpak-id (Downloading a flatpak application from the Flathub repo and installing it into host system for file extraction)
    - local (Used in multi-step extractions (such as nested archives) or for pulling files which otherwise already exist on the build host)

  Additional types can be supported through the creation of new "downloaders" plugins. The plugin code structure is generally consistent, so refer to existing plugins for information on creating new ones.

.<root key>.version
  This is an semi-optional key where the value will be used to download a specific version of the source.
  The key is required for all types except for 'local'.
  If a {VERSION} placeholder is used in a 'source_url', this value will be substituted.
  Currently supported 'version' values for different 'source_type' are:

    - 'http' : Specific version string, used to replace {VERSION} placeholders in the source URL.
    - 'github-release' : Specific version string, used to replace {VERSION} placeholders in the source URL.
                     A value of 'latest' is also supported, which will use the GitHub API to determine the current latest release.
                     NOTE: USE OF THE 'latest' VALUE IS NOT RECOMMENDED AS THE VERSION DOWNLOADED IS UNCONTROLLED.
    - 'git' : Specific git commit hash to download and checkout.
    - 'flatpak-id' : Specific flatpak commit hash to download.
                     NOTE: Flatpak commit hash information can be found using the command 'flatpak remote-info --log flathub <flatpak ID>'
    - 'local' : For a 'local' source type, the key can be omitted entirely.

.<root key>.extraction_type
  Currently supposed extraction methods are:

    - appimage (Extracting a provided AppImage file. The root of the AppImage exctraction, typically 'squash-fs' is moved to '<dest>/<AppImage filename>-extracted' and that path is returned as '$EXTRACTED_PATH')
    - archive (Extracting a provided compressed archive. Supports most compression types, determined automatically by file extension. The contents of the archive are extracted to the path '<dest>/<Archive filename>-extracted' and that path is returned as '$EXTRACTED_PATH')
    - local (As local files do not need further extraction, this is a dummy plugin which returns '$DOWNLOADED_FILE' as '$EXTRACTED_PATH')
    - git (As local git-cloned files do not need further extraction, this is a dummy plugin which returns '$DOWNLOADED_FILE' as '$EXTRACTED_PATH')
    - flatpak (As local Flatpak files do not need further extraction, this is a dummy plugin which returns '$DOWNLOADED_FILE' as '$EXTRACTED_PATH')

  Additional types can be supported through the creation of new "extractor" plugins. The plugin code structure is generally consistent, so refer to existing plugins for information on creating new ones.

.<root key>.additional_sources
  This is an array of objects for additional sources that may be needed for the component to be completed.
  Each object in this array contains all the same keys and arrays as the "core" recipe, so all keys in this reference are equally valid within those objects.
  See the "Alchemist Process Abstraction" section for more information on proper 'additional_sources' usage.

.<root key>.dest
  The destination of a given download or extraction can be provided using this key. The path provided here is absolute, so be sure to use placeholders appropriately.
  This key is optional, and if omitted or empty it will be defaulted to '$WORKDIR'.
  This key also has a unique use for 'flatpak_id' source types, where it defines the install type (user/system) for the Flatpak install. If the key is empty or omitted the Flatpak install type will default to 'user'.
  NOTE: Flatpak 'system' mode installs may require sudo depending on the environemt, so should be used with caution.

.<root key>.assets.[]
  This is an array of objects containing any data that should be copied out of the current asset into '$COMPONENT_ARTIFACT_ROOT'.

.<root key>.assets.[{<asset obj>.type}]
  Currently supported asset types are:

    - file (A single file, to be copied from one location to another)
    - dir (A directory, which will be entirely copied from one location to another)

.<root key>.assets.[{<asset obj>.source}]
  A relative path used as the source for asset file(s) to be copied from.
  The 'source' path is always relative to '$EXTRACTED_PATH' for the current extracted source. A value of 'usr/bin' will pull files from '$EXTRACTED_PATH/usr/bin'.

.<root key>.assets.[{<asset obj>.dest}]
  A relative path used as the destination for asset file(s) to be copied to.
  The 'dest' path is always relative to '$COMPONENT_ARTIFACT_ROOT'. A value of 'bin' will copy the file(s) to '$COMPONENT_ARTIFACT_ROOT/bin'.

.<root key>.libs.[]
  This is an array of objects containing any libraries that should be gathered for the current component.
  It is highly recommended to use the hunt_libraries.sh script in order to bootstrap this array, as the contents from the output of that script can be pasted directly into a recipe in this 'libs' section.

.<root key>.libs.[{<lib obj>.library}]
  The name of the library to be gathered. In order to gather all associated versioned links for the given library, the gathering process strips the file to the extension, meaning that 'libName.so.1.2.3' will actually be gathering 'libName.so*'.

.<root key>.libs.[{<lib obj>.runtime_name}]
  This is an optional key containing the name of the Flatpak runtime that the library should be gathered from.
  If this key is provided, the 'runtime_version' key is also required and the 'source' key becomes unnecessary.

.<root key>.libs.[{<lib obj>.runtime_version}]
  This is an optional key containing the version of the Flatpak runtime that the library should be gathered from.
  If this key is provided, the 'runtime_name' key is also required and the 'source' key becomes unnecessary.

.<root key>.libs.[{<lib obj>.source}]
  This is an optional key containing the relative path used to gather this library file.
  The path is relative to '$EXTRACTED_PATH', so if a path of 'usr/lib' is provided, the library will be looked for at '$EXTRACTED_PATH/usr/lib/<library name>'.
  If the 'runtime_name' and 'runtime_version' keys are not provided for this object, this key becomes required.

.<root key>.libs.[{<lib obj>.dest}]
  This is the relative path to store this library at in the final artifact.
  The path is relative to '$COMPONENT_ARTIFACT_ROOT', and additional paths are created for objects using the 'runtime_name' and 'runtime_version' keys.
  If Flatpak-related keys are provided, the 'dest' path provided is expanded to '$COMPONENT_ARTIFACT_ROOT/<dest>/<runtime_name>/<runtime_version>/<library name>'.
  If a 'source' key is provided, the 'dest' path is expanded to '$COMPONENT_ARTIFACT_ROOT/<dest>/<library name>'.

.<root key>.extras.[]
  This is an array of objects containing any extras that should be included in the final artifact.

.<root key>.extras.[{<extra obj>.type}]
  Current supported extras types are:

    - dir (A directory that should be gathered from the build host. Used to gather directories from locations such as the component git repo)
    - file (A file that should be gathered from the build host. Used to gather files from locations such as the component git repo)
    - symlink (Create a prepared symlink to be included with the component artifact)
    - create (Create a new file to be included with the component artifact, optionally with a content string)

.<root key>.extras.[{<extra obj>.source}]
  This is a semi-optional key where the value will be used to define a specific source, depending on the 'type' used.
  The key is required for all types except for 'create'.
  The currently supported 'source' values for different extra 'type' are:

    - 'dir' : An absolute or relative path to use as the source directory for the extra. The directory will be copied entirely to the 'dest'. If a relative path is provided, it will be expanded to '$WORKDIR/<source>/'.
    - 'file' : An absolute or relative path to use as the source file for the extra. If a relative path is provided, it will be expanded to '$WORKDIR/<source>'.
    - 'symlink' : An absolute or relative path to use as the link creation location for ths symlink. If a relative path is provided, it will be expanded to '$COMPONENT_ARTIFACT_ROOT/<source>'.
    - 'create' : The 'source' key can be omitted for 'create' type extras.

.<root key>.extras.[{<extra obj>.dest}]
  This is the relative path where the extra will be copied, created or linked.
  The currently supported 'dest' values for different extra 'type' are:

    - 'dir' : A relative path to where the extra directory should be copied to. The path is relative to '$COMPONENT_ARTIFACT_ROOT', so a provided 'dest' will be expanded to '$COMPONENT_ARTIFACT_ROOT/<dest>/'.
    - 'file' : A relative path to where the extra file should be copied to. The path is relative to '$COMPONENT_ARTIFACT_ROOT', so a provided 'dest' will be expanded to '$COMPONENT_ARTIFACT_ROOT/<dest>'.
    - 'symlink' : An absolute path to where the created symlink should be pointed. As these paths may not exist during creation and are being prepared for the Flatpak environment, make sure your 'dest' path is valid within that environment.
    - 'create' : A relative path to where the created file should be made. The path is relative to '$COMPONENT_ARTIFACT_ROOT', so a provided dest will be expanded to '$COMPONENT_ARTIFACT_ROOT/<dest>'.

.<root key>.extras.[{<extra obj>.contents}]
  This is an optional key, used only for the 'create' extra 'type'.
  The value of this key will be echoed into the created file.


Reusable Envronmental Variable Reference:

$REPO_ROOT
  If the alchemist.sh script is called from within a git-cloned repo, this is set to the root path of that repo. If the script is called from elsewhere, this is set to the location the script was called from.

$WORKDIR
  The working directory for the current component artifact creation. This will include any downloaded sources, extracted files as well as the final artifact temporary directory which will be compressed at the end of the Alchemist work.
  The $WORKDIR can be set by passing an argument to the alchemist.sh script, or will be defaulted to the value of the $DEFAULT_WORKDIR variable, which is set in the defaults.sh script.

$COMPONENT_NAME
  This is the name string of the currently-processing component recipe. This string should match the name of the component directory in the components repo for simplicity and reusability.

$COMPONENT_ARTIFACT_ROOT
  This shared variable stores the path to the final artifact directory, where all files that should be included in the artifact archive go.
  The value of this path for every Alchemist run is '$WORKDIR/$COMPONENT_NAME-artifact'.

$DOWNLOADED_FILE
  This shared value stores the path to the most recently downloaded file. It is generally only referred to by the subsequent extraction stage.
  The value of this variable is provided by the download.sh script plugin used to download the file, in the form of the output of the line 'echo "DOWNLOADED_FILE=<download path>"' from a downloader plugin which is then read by alchemist.sh.

$EXTRACTED_PATH
  This shared value stores the path to the most recently extracted archive. It is generally only referred to by the subsequent assembly stage, which gathers required files from that archive.
  The value of this variable is provided by the extract.sh script plugin used to extract the file, in the form of the output of the line 'echo "EXTRACTED_PATH=<extracted path>"' from an extractor plugin and then read by alchemist.sh.
  In the case of a "local" extraction (which does not involve any actually compressed files, such as for local or flatpak sources), a dummy plugin is used to return the same path as was provided by the downloader.

$FLATPAK_USER_ROOT
  This is a default value to denote the path to the "user" install location for Flatpaks (typically '$HOME/.local/share/flatpak/app'). This value is defined in the defaults.sh file and can be adjusted to as needed depending on the environment.

$FLATPAK_SYSTEM_ROOT
  This is a default value to denote the path to the "system" install location for Flatpaks (typically '/var/lib/flatpak/app'). This value is defined in the defaults.sh file and can be adjusted to as needed depending on the environment.

$FLATPAK_DEFAULT_INSTALL_MODE
  This sets the default install "mode" used for local Flatpak installed. It defaults to 'user' as 'system' mode installs may require sudo depending on the environment.

$FLATHUB_REPO
  This is the current repo for the Flathub distribution system (currently 'https://flathub.org/repo/flathub.flatpakrepo'). Can be adjusted as needed if the default repo ever changes.
  This repo is validated to be configured any time a Flatpak install is attempted.

$DESIRED_VERSIONS
  This is the path to the included 'desired_versions.sh' script, which contains a catalog of all the desired versions for all components. It is used to translate variable placeholders in component recpies.
  This desired_versions.sh catalog can be overridden for a specific alchemist.sh script run using an input argument. The intention of this so that a 'stable' set of versions can be maintaned and a 'beta' set of versions can be tested against as needed. 
