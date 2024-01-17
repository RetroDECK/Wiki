# Xbox One - Kinect V2

<img src="../../../wiki_images/controllers/xbox-kinect-one.png" width="250">

Used for various titles on the Xbox One.

### Steam Input support
No

### Linux Kernel Support
Unknown

### Emulator usecase
None

### Related Projects for Kinect usage in Linux

[Open Kinect](https://openkinect.org/wiki/Main_Page)

[Github - Open Kinect: libfreenect1](https://github.com/OpenKinect/libfreenect)

### Udev Rules for Kinect V2

```
# ATTR{product}=="Kinect2"
SUBSYSTEM=="usb", ATTR{idVendor}=="045e", ATTR{idProduct}=="02c4", MODE="0666"
SUBSYSTEM=="usb", ATTR{idVendor}=="045e", ATTR{idProduct}=="02d8", MODE="0666"
SUBSYSTEM=="usb", ATTR{idVendor}=="045e", ATTR{idProduct}=="02d9", MODE="0666"
```

## How to configure / emulate

Nothing
