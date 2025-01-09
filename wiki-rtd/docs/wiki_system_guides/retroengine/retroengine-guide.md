# RetroENGINE - Run with RetroDECK

<img src="../../../wiki_images/systems/retroengine/re-appselect.png" width="500"> 

RetroENGINE allows you to run various game files directly with RetroDECK from the desktop without starting the application. 

It supports the association of common game file extensions with RetroDECK. Additionally, you can run games directly via RetroENGINE using the CLI.

This feature has been requested by the wider development community outside of RetroDECK.

## Will RetroENGINE detect what system I want to launch?

If you place the game file inside the corresponding `retrodeck/roms/<system>/<gamefile>` directory, RetroDECK will automatically recognize which system to launch.

### What if it is not in the correct folder?

When clicked, RetroDECK will prompt a dialog window asking which system the file belongs to and then run it.

##  Launch with games via CLI

You can also launch games directly with RetroENGINE via CLI.

**Example syntax:** 

`flatpak run net.retrodeck.retrodeck retrodeck/roms/<system>/<gamefile>` (`--help` for more information).

## Examples:

<img src="../../../wiki_images/systems/retroengine/littlemedusa.png" width="300"> 

In these examples, we will use the [Little Medusa - Demo](https://megacatstudios.com/pages/little-medusa) a `.nes` file called `LittleMedusa_8bitdemo.nes` from Mega Cat Studios.

### Example 1:  The Game Inside the Correct Roms Folder

<img src="../../../wiki_images/systems/retroengine/re-infolder.png" width="300"> 

In this example, the `LittleMedusa_8bitdemo.nes` file is inside the `retrodeck/roms/nes` folder. 

When you click on it, RetroDECK opens it with the Nintendo Entertainment System emulator, and the game starts. 

RetroDECK knows that because you opened it from the `/roms/nes` folder, the game must correspond to that system.

### Example 2: The Game Outside the Roms Folder

<img src="../../../wiki_images/systems/retroengine/re-nonedir.png" width="500"> 

In this example, the `LittleMedusa_8bitdemo.nes` file is not inside the `retrodeck/roms/nes` folder but in the `download` folder. 

When clicked, RetroDECK will prompt a dialog window asking which system the file belongs to and then run it.

### Example 3: Running via CLI 

Example full syntax:

`flatpak run net.retrodeck.retrodeck retrodeck/roms/nes/LittleMedusa_8bitdemo.nes`
