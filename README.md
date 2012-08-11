Arduino environment for Illumi
##############################

This project contains the files needed to program Illumi smart lamps from the Arduino environment.

Illumi is an open-source smart lamp that can be controlled through Wifi. More information (and source code) is available on [http://getillumi.com](http://getillumi.com).

This project is of course heavily based on the [Arduino project](http://github.com/arduino).

## Howto use

To use the illumi board in the Arduino environment, you first need Arduino 1.0.1 IDE.

You will need to copy all the files from this project into your arduino sketchbook folder.

On Windows: `My Documents/Arduino/hardware/illumi`
On Mac: `Documents/Arduino/hardware/illumi`

The Arduino directory should already be there if you have already opened Arduino and saved a sketch. You will need to create the subdirectories `hardware` and `illumi`.

If you are on a Mac, you can also use the script `install.sh`.

## Content
### Bootloader

The bootloader for Illumi is named Illu. It is based on Arduino's Caterina bootloader for the Atmega 32u4 micro-controller. The bootloader has been adapted to run at 8Mhz (because Illumi boards run on 3.3V, 8Mhz is the maximum supported speed).

To compile the bootloader, you need to have a copy of the Lightweight USB Framework for AVRs. The caterina bootloader (and this code) are tested against LUFA-111009 that you should unzip in the parent folder of this project (you can also edit the `Makefile`).

Special thanks goes to Sparkfun for [leading the way in adapting Caterina for 3.3V device](http://www.sparkfun.com/tutorials/338).

#### USB Vendor ID and Product ID

The bootloader `Makefile` defines the USB vendor id and product id used by the board. They contain Arduino's Leonardo VID & PID. Those ids belong to Arduino and you are not allowed to re-use them without their permission. Use them at your own risk for development purposes.

### Cores

Contain the Arduino core files (files that are compiled with your sketch to form the entire .hex that is uploaded to the board). There is only one change to `USBCore.cpp` in `USBDevice_::attach()` to set the PLL settings correctly if the clock is at 8Mhz.

### Variants

`illumi/pins_arduino.h` is a copy of the Leonardo's.

