# Launching External Emulators 

This experiment was initiated by the user **TopHatCat:** and later expanded upon by the RetroDECK Team. The goal was to explore the possibility of launching desktop games and apps within RetroDECK.

### Disclaimer on Experiments 

These experiments are created by the RetroDECK Team and/or Community. The guides are intended for people with technical knowledge and a passion for tinkering. Using these guides *might* put RetroDECK and your data at risk. The RetroDECK Team can't provide any support for these experiments or fix any issues they might cause on your system or RetroDECK installation.


## Prerequisites

### Flatpak Spawn Permission

**Information:**

This experiment requires the `flatpak-spawn` permission, which breaks the sandbox environment that RetroDECK operates in. Therefore, we do not recommend attempting this unless you are confident in your understanding of the process and its implications.

You can enable it by running this command in the terminal.

```
flatpak override --user --talk-name=org.freedesktop.Flatpak net.retrodeck.retrodeck
```

### Add RetroDECK to Steam

We also recommend that you add RetroDECK to Steam to utilize Steam Input as there is a higher chance of inputs working from the external source.

Also some RetroDECK built-in hotkeys in the radials like `Alt+F4` might help you close windows.

## 


To add external emulators to retrodeck:

Go to your root directory and search for the file es_systems.xml through your whole system.

There will be multiple copies, go to the one in a dir called "Linux". Go to the directory, not the file specifically.

Next to es_systems.xml is es_find_rules.xml. open that file. This will have commands to run different emulators.

Add a new emulator with whichever name you want that has a system path rule with only one entry of flatpak-spawn, but you have to remember that name. This is merely a bridge.

My example:
```
xml
<emulator name="HOST">
<rule type="systempath">
<entry>flatpak-spawn</entry>
</rule>

</emulator>
```


This is the hard part. Now for the easy part.


To add an external emulator:

Go to your root directory to search for es_systems.xml

There will be multiple copies, find the one in a directory called Linux. Go to the directory, not the file.
[8:36 AM]TopHatCat: .
You'll find in the directory a file named es_find_rules.xml

Open the file. And start adding a new emulator with a memorable, but generic name

Here's my example

```
XML
<command label="Dolphin (External)">
%EMULATOR_HOST% --host /usr/bin/dolphin-emu -b -e %ROM%
</command>
```

 Replace the EMULATOR_HOST with whichever name you picked before and viola.

You will need to know the path to your emulator's executable if a similar emulator exists in retrodeck cause, despite not trying it, I'm 99% sure it'll prioritize the local one than the host's 
[8:44 AM]TopHatCat: That's why I used /usr/bin/dolphin-emu
