# Racing Controllers

Racing Controllers are used for playing racing games and include a variety of third-party and first-party controllers. Some may lack Linux drivers or udev rules, but there are community efforts to make them work. Some require Windows-only software to configure inputs and buttons.

The best solution is to try your Racing Controller on Linux via the Steam Deck Dock or a Linux PC. If it works and supports xinput, it should work with RetroDECK.

If you have a Racing Controller that didn't work on Linux but found a way to make it work:

- Contribute udev rules to the [game-devices-udev codeberg](https://codeberg.org/fabiscafe/game-devices-udev).
- Contribute to the Oversteer project.

## The Oversteer Project

The [OverSteer Project](https://github.com/berarma/oversteer) manages support for multiple steering wheels on Linux. It uses features provided by loaded modules but doesn't provide hardware support. 

You'll still need a driver module that enables the hardware on Linux. Most wheels will work but won't have FFB without specific drivers that support that feature.

## Steering Wheels, Pedals and Gear Shifters

<img src="../../../wiki_images/controllers/racing-kit.png" width="250">

- Steering Wheel
- Pedals
- Gear Shifters
