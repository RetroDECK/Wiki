# Creating a Component from an AppImage

## Typical Structure of an AppImage

```
squashfs-root/
  ├── AppRun
  └── usr/
      ├── bin/
      ├── lib/
      └── share/
```


### Example: CEMU

1. **Download the AppImage**

```
wget "https://github.com/cemu-project/Cemu/releases/download/v2.6/Cemu-2.6-x86_64.AppImage"
```

2. Extract the AppImage

```
chmod +x "Cemu-2.6-x86_64.AppImage"
$(realpath "Cemu-2.6-x86_64.AppImage") --appimage-extract
```

3. Move Required Data

cp component_launcher.sh manifest.json functions.sh prepare_component.sh cemu/
chmod +x cemu/component_launcher.sh

