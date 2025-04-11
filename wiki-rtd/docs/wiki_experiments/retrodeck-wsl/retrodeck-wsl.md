# Run RetroDECK in WSL on Windows 11

<img src="../../../wiki_icons/pixelitos/windows.png" width="75">


This experiment was initiated by a stupid idea in the RetroDECK Team. 

**Note:** RetroDECK was never intended to be used in this manner and the performance is horrible. It is better to us a solution that is made for Windows like RetroBat.

### Disclaimer on Experiments 

These experiments are created by the RetroDECK Team and/or Community. The guides are intended for people with technical knowledge and a passion for tinkering. Using these guides *might* put RetroDECK and your data at risk. The RetroDECK Team can't provide any support for these experiments or fix any issues they might cause on your system or RetroDECK installation.

## How-to: Install RetroDECK in WSL on Windows 11

### Step 1: Installing Windows Subsystem for Linux (WSL)

- Open **PowerShell** as an Administrator.
- Run the following command to enable WSL and the Virtual Machine Platform:
    
```
wsl --install
```

- Restart your computer if prompted.

### Step 2: Install a Distro

In this example we will install Ubuntu.

- Open **PowerShell** as an Administrator.
- Run the following command to install Ubuntu:

```
wsl --install -d Ubuntu
```

### Step 2: Install Flatpak Support

- Launch Ubuntu from the Start menu or by typing `wsl` in PowerShell.
- Update the system:

```
sudo apt update && sudo apt upgrade --yes
```

- Install flatpak:

```
sudo apt install flatpak
```

- Install flathub:

```
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
```

### Step 3: RetroDECK

- Install RetroDECK:

```
flatpak install --user --noninteractive -y net.retrodeck.retrodeck
```

## Running RetroDECK in WSL

- After RetroDECK has been installed (follow the guide above)
- Launch Ubuntu from the Start menu or by typing `wsl` in PowerShell.
- Run the following command:

```
flatpak run net.retrodeck.retrodeck
```

- RetroDECK will then boot, except horrible performance.
- Run the following command:

### Updating Flatpaks & RetroDECK

- Run the following command:

```
flatpak update -y
```
