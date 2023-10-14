## WyzeV2 / WyzePan DeFang Repair Repo

This repository contains custom firmware for the following devices:


Name | Picture | | Name | Picture
--- | --- | --- | --- | ---
Wyzecam V2 | ![XiaoFang](/wyzev2.png) | | Wyzecam Pan | ![Dafang](/wyzepan.png)

## How to install the CFW (firmware hack)
* Under /hacks locate the wyze model directory; rename to demo.bin and copy to the SD card.
* While pressing the SETUP/RESET button, plug the device in (wait ~12 seconds, then release.)
* When complete, the yellow LED should be blinking, remove power and insert FIRMWARE sd card.

## Setting up the FIRMWARE sd card
* Create a 256MB primary partition on an SD card
* Copy the firmware_mod contents onto the SD card
* Modify /config files for Static IP if/as needed

### TO-DO LIST:
* [ ] ALL: Create a watch-dog script to run in the background 24/7
* [ ] ALL: Add to watch-dog: Networking (If loss of connection, AP Mode, etc.)
* [ ] ALL: Add to watch-dog: ONVIF monitoring (if enabled)
* [ ] ALL: Add to watch-dog: RTSP monitoring (if enabled)
* [ ] ALL: Update Web GUI slider for ONVIF (always shows Not Running)
* [ ] ALL: Update Web GUI for additional camera dimensions/resolutions
* [ ] ALL: Add autoexec boot script to check/repair dirty bit (P1 and P2)
* [ ] PAN: Update bin/motor to shut off ONVIF during motor movements, then back on (motor.bin is dead while ONVIF is running on PAN.)
* [ ] ALL: Add as much logging details as possible on runtime events (some cameras go offline for unknown reasons, etc.)
* [ ] ALL: In DBG MODE, we'll want as many audible and visual responses to allow us to determine how far a device has reached.

### FUTURE TO-DO LIST:
* [ ] ALL: Replace the existing update procedure (ZIP instead of one file at a time) from GIT and/or OTHER
*      VERSION (URL and GIT fields) and ZIPFILE (URL as GIT fields) so we can host via GIT or SERVER
*      TOKEN (Currently in SETTINGS) should be moved to the place WE DO UPDATES...  Just say'in!
* [ ] ALL: Replace the existing Web GUI with a more JS/JQ/BOOT friendly variant (and more visually appealing.)
* [ ] ANY: Thorough testing of networking protocols/keys/etc. (WPA/WPA2) especially on DECO and TOMATO routers
* [ ] PAN: Add to Web GUI a location to determine hot-spots, starting position (after resetting motor), etc.
* [ ] PAN: Add the ability for a fast/slow PTZ "scan" of the area (left-right, height and min/max scan area)
* [ ] ALL: Create a time based replacement for automatic night vision (on/off times)
* [ ] ALL: Update WPA_SUPPLICANT (conf) to contain a PRIMARY, SECONDARY and CATCH ALL network (showing all settings)
