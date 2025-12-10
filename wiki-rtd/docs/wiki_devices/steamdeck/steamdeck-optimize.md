# Steam Deck: Optimizations & Addons

<img src="../../../wiki_icons/pixelitos/steam.png" width="75">

These optimizations are entirely optional, but they can provide improved performance for certain more demanding components and applications on the Steam Deck.

---


## Increasing VRAM to 4 GB

Adjusting the VRAM allocation to 4 GB through the BIOS can improve performance in certain components by providing additional memory to the integrated GPU.

**Installation Steps**

1. Power off your Steam Deck completely.  
2. Press and hold the **Power Button** and **Volume Up Button** simultaneously until you hear a chime/beep, then release both buttons.  
3. In the boot menu, select **Setup Utility**.  
4. Navigate to the **Advanced** tab.  
5. Locate the **UMA Frame Buffer Size** setting and change it to **4 GB**.  
6. Save your changes and exit the BIOS.

Your Steam Deck will now boot with the updated VRAM allocation.


---

## Setting a Sudo Password

Configuring a sudo password is required for many optimizations and system-level tasks. It also enhances the security of your Steam Deck by enabling authenticated access to elevated privileges.

**Installation Steps**

1. Switch to **Desktop Mode** on your Steam Deck.  
2. Open **Konsole** or another terminal application.  
3. Enter the command: `passwd` 
4. You will now set your new sudo password.
5. After you are done you can close the terminal.

---

## Installing CryoUtilities

**Prerequisite:** A configured `sudo` password is required before installation.

CryoUtilities can create a 16 GB swap file, which may improve performance for certain components. Be aware that this swap file will consume 16 GB of storage space on your Steam Deck.

**Installation Steps**

1. Switch to **Desktop Mode** on your Steam Deck.  
2. Open a web browser and navigate to the official  
   **[CryoUtilities GitHub repository](https://github.com/CryoByte33/steam-deck-utilities)**.  
3. Open the **Releases** section.  
4. Download the latest `cryo_utilities` release and save it to your **Desktop** or **Home** directory.  
5. Locate and double-click the downloaded file to begin the installation process.  
6. After installation completes, a new desktop icon labeled **CryoUtilities** will appear.  
7. Launch **CryoUtilities**.  
8. Select **Recommended Settings** to apply the optimized configuration.

---

## Installing Decky Loader

**Prerequisite:** A configured `sudo` password is required before installation.

Decky Loader is a [Homebrew Plugin Store](https://beta.deckbrew.xyz/) for the Steam Deck.

**Installation Steps**

1. Switch to **Desktop Mode** on your Steam Deck.  
2. Open **Konsole** or another terminal application.  
3. Run the following command:  `curl -L https://github.com/SteamDeckHomebrew/decky-installer/releases/latest/download/install_release.sh | sh`
4. Decky Loader will install automatically. 
5. Once the installation is complete, return to **Game Mode**.

You can access Decky Loader at any time by pressing the **Menu Button (•••)**.

---

### Decky Loader: Installing Power Tools

**Power Tools** provides advanced performance-tuning options for the Steam Deck.  
Optimal settings depend on the specific hardware component and may vary between games.

**Installation Steps (in Game Mode)**

1. Press the **Menu Button (•••)**.  
2. Open **Decky Loader**.  
3. Navigate to the **Store** and install **Power Tools**.  
4. After installation, a new **🔌 Power Tools** icon will appear within the **Menu Button (•••)** menu, giving you quick access to the plugin.

---

### Decky Loader: AutoFlatpaks

**AutoFlatpaks** allows you to manage and update Flatpak applications-such as RetroDECK-directly from **Game Mode**.

**Installation Steps (in Game Mode)**

1. Press the **Menu Button (•••)**.  
2. Open **Decky Loader**.  
3. From the **Store**, install **AutoFlatpaks**.

AutoFlatpaks will now be accessible through the Decky Loader menu for convenient Flatpak management.

---

