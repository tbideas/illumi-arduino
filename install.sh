#!/bin/sh

# To patch for system-wide
# ARDUINO=/Applications/Arduino.app/Contents/Resources/Java/hardware/arduino

ARDUINO=$HOME/Documents/Arduino/hardware/illumi

rm -fr $ARDUINO
mkdir -p $ARDUINO

echo "Adding Illumi files to your Arduino configuration in $ARDUINO"

cp -rv . $ARDUINO