# Can you Add DLC to Citra Core in RetroArch?

No, not natively. The RetroArch core does not support DLC files. 

But you can move them from Citra-SA (This is not shipped in RetroDECK). You can use an external Citra or fork to generate the files.

Note this might not work anymore as the Citra core is quite old.

## Open Citra-SA

   - Open the standalone Citra or fork emulator.
   - Go to `File` > `Install CIA...` and select the .cia file for the update or DLC.
   - This will install the update/DLC within the standalone Citra emulator.

## Locate the Installed Update/DLC Folders 

   - Navigate to the Citra save directory on your system. The path is usually:
   
     ```
     <Citra Install Location>/sdmc/Nintendo 3DS/00000000000000000000000000000000/00000000000000000000000000000000/<titleID>/
     ```
   - Inside this directory, you will find three folders with numbers that corresponds to:
     - Updates
     - Saves & Installed Applications
     - DLCs

## Copy the Update/DLC Folders to the correct RetroDECK Folder

   - Copy the folders of Updates and Installed DLC from the standalone Citra directory.
   - Paste these folders into the corresponding directory in RetroDECK's Citra core save folder. The path should be similar to the one used in standalone Citra.
   
   ```
    retrodeck/saves/n3ds/citra/sdmc/Nintendo 3DS/00000000000000000000000000000000/00000000000000000000000000000000/<titleID>/
    ```
    
   - The game should now recognize the installed update/DLC from the copied folders in the RetroArch Core and can be used in RetroDECK.
