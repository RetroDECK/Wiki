# Xbox 360 - Kinect v1

<img src="../../../wiki_images/controllers/xbox-kinect-360.png" width="250">

The Xbox 360 Kinect, released on November 4, 2010, is a motion-sensing input device developed by Microsoft for the Xbox 360 console. It has undergone several revisions, including the Xbox 360 S and E models, which feature dedicated ports for Kinect, eliminating the need for an external power supply.

### Steam Input support

No

### Linux Kernel Support

No

### Emulator usecase
`Xenia`

But is it not supported in Xenia

See issue:<br>
[Xenia Issue: 1241](https://github.com/xenia-project/xenia/issues/1241)

There exists no Kinect Emulation as of this writing

### Related Projects for Kinect usage in Linux

[Open Kinect](https://openkinect.org/wiki/Main_Page)

[Github - Open Kinect: libfreenect1](https://github.com/OpenKinect/libfreenect)

### Udev Rules for Kinect V1

```
# ATTR{product}=="Xbox NUI Motor"
SUBSYSTEM=="usb", ATTR{idVendor}=="045e", ATTR{idProduct}=="02b0", MODE="0666"
# ATTR{product}=="Xbox NUI Audio"
SUBSYSTEM=="usb", ATTR{idVendor}=="045e", ATTR{idProduct}=="02ad", MODE="0666"
# ATTR{product}=="Xbox NUI Camera"
SUBSYSTEM=="usb", ATTR{idVendor}=="045e", ATTR{idProduct}=="02ae", MODE="0666"

# Kinect for Windows
SUBSYSTEM=="usb", ATTR{idVendor}=="045e", ATTR{idProduct}=="02c2", MODE="0666"
SUBSYSTEM=="usb", ATTR{idVendor}=="045e", ATTR{idProduct}=="02be", MODE="0666"
SUBSYSTEM=="usb", ATTR{idVendor}=="045e", ATTR{idProduct}=="02bf", MODE="0666"
```

## How to configure / emulate

Nothing yet
