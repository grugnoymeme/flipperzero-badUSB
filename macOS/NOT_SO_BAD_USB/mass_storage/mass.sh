#!/bin/bash

serial_device="/dev/tty.usbmodemflip_Extele1"
storage_path="/ext/apps_data/badusb_serial"

if [ ! -d "$storage_path" ]; then
    mkdir -p "$storage_path"
fi

echo "Inserisci il percorso completo del file da inviare:"
read file_path

if [ -f "$file_path" ]; then
    echo "storage write $storage_path" > "$serial_device"
    cat "$file_path" > "$serial_device"
    echo -ne '\x03' > "$serial_device"
else
    echo "Il file non esiste."
fi
