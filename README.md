# WiFi Driver Installation
Some Linux distributions don't provide a driver for Broadcom WiFi adapters. It
must be installed manually.

# Notes
Needless to say, to install the driver, you must have an active Internet
connection (perhaps via ethernet).

## Fedora 28
The installed driver gets deleted after running `sudo dnf update`. In which
case, the script has to be executed again to reinstall the driver.

## Linux Mint 20.2
Some flavours do provide the required driver. The script may then not be
needed.

