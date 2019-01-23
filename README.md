# Fedora Broadcom WiFi driver problem fix
Fedora is very particular about using free and open-source software. As of release Fedora 28, it does not have the driver for the Broadcom WiFi chip. This script should install said driver provided you're connected to the internet (perhaps through LAN, because your WiFi is, obviously, not working).

The installed driver gets deleted after running `dnf update`. In which case, the script has to be executed again to reinstall the driver.
