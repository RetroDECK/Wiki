## Template: component_recipe.json - Flathub

```
{
  "<component name>": [
    {
      "source_url": "<flatapak ID>",
      "source_type": "flatpak_id",
      "version": "$COMPONENT_DESIRED_VERSION",
      "dest": "user",
      "extraction_type": "flatpak",
      "assets": [
        {
          "type": "dir",
          "source": "bin",
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
      "libs": []
    },
    {
      "source_url": "https://github.com/otherasset",
      "source_type": "http",
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