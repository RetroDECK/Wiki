## Template: component_recipe.json - Web Single Nested

```
{
  "<component name>": [
    {
      "source_url": "https://url.to.source/{VERSION}/archive1.zip",
      "source_type": "http",
      "version": "$COMPONENT_DESIRED_VERSION",
      "extraction_type": "archive"
    },
    {
      "source_url": "$EXTRACTED_ROOT/component.AppImage",
      "source_type": "local",
      "extraction_type": "appimage",
      "assets": [
        {
          "type": "dir",
          "source": "usr/bin",
          "dest": "bin"
        },
        {
          "type": "dir",
          "source": "$REPO_ROOT/$COMPONENT_NAME/rd_assets/rd_config",
          "dest": "rd_config"
        },
        {
          "type": "file",
          "source": "$REPO_ROOT/$COMPONENT_NAME/component_functions.sh",
          "dest": "$COMPONENT_ARTIFACT_ROOT"
        },
        {
          "type": "file",
          "source": "$REPO_ROOT/$COMPONENT_NAME/component_launcher.sh",
          "dest": "$COMPONENT_ARTIFACT_ROOT"
        },
        {
          "type": "file",
          "source": "$REPO_ROOT/$COMPONENT_NAME/component_manifest.json",
          "dest": "$COMPONENT_ARTIFACT_ROOT"
        },
        {
          "type": "file",
          "source": "$REPO_ROOT/$COMPONENT_NAME/component_recipe.json",
          "dest": "$COMPONENT_ARTIFACT_ROOT"
        }
      ],
      "libs": [
        {
          "library": "runtimeLib.so.6",
          "runtime_name": "org.kde.Platform",
          "runtime_version": "6.9",
          "dest": "shared-libs"
        }
      ]
    },
    {
      "source_url": "https://url.to.source/{VERSION}/archive-extras.zip",
      "source_type": "http",
      "version": "$COMPONENT_EXTRAS_DESIRED_VERSION",
      "extraction_type": "archive",
      "assets": [
        {
          "type": "archive",
          "source": "xyz/assets",
          "dest": "rd_extras/"
        }
      ]
    }
  ]
}

```
