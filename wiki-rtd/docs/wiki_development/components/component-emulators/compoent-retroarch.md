# Component: RetroArch

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
er build, but beware: if we do this before all the outsourced modules are finished to be built we will have an outdate
