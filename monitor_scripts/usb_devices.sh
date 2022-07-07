#! /bin/bash

# print whether or not esp32 is connected

DEVICE=/dev/ttyUSB0

ls $DEVICE > /dev/null

if [ $? -ne 0 ]
then
    echo "is_connected 0"
else
    echo "is_connected 1"
fi

# print how many usb devices connected

OUTPUT2=$(ls -l /dev/ttyUSB* | wc -l)
echo "num_of_connected_devices $OUTPUT2"
