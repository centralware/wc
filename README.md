## WyzeV2 / WyzePan DeFang Repair Repo

This repository contains custom firmware for the following devices:

Name | Picture | | Name | Picture+
--- | --- | --- | --- | ---
Wyzecam V2 | ![XiaoFang](/xiaofang.png) | | Wyzecam Pan | ![Dafang](/dafang.png)

## How to install the CFW (firmware hack)
* Under /hacks locate the wyze model directory; rename to demo.bin and copy to the SD card.
* While pressing the SETUP/RESET button, plug the device in (wait ~12 seconds, then release.)
* When complete, the yellow LED should be blinking, remove power and insert FIRMWARE sd card.

## Setting up the FIRMWARE sd card
* Create a 256MB primary partition on an SD card
* Copy the firmware_mod contents onto the SD card
* Modify /config files for Static IP if/as needed

### TO-DO LIST:
* [ ] :warning: Create a watch-dog script to run in the background 24/7
* [ ] :warning: Add to watch-dog: Networking (If loss of connection, AP Mode, etc.)
* [ ] :warning: Add to watch-dog: ONVIF monitoring (if enabled)
* [ ] :warning: Add to watch-dog: RTSP monitoring (if enabled)
* [ ] :warning: Update /bin/motor to shut off ONVIF during motor movements, then back on (motor.bin is dead while ONVIF is running on PAN.)
* [ ] :red_circle: Add autoexec boot script to check/repair dirty bit (P1 and P2)
* [ ] :yellow_circle: Update Web GUI for additional camera dimensions/resolutions
* [ ] :green_circle: Update Web GUI slider for ONVIF (always shows Not Running)
* [ ] :green_circle: Add as much logging details as possible on runtime events (some cameras go offline for unknown reasons, etc.)
* [ ] :green_circle: In DBG MODE, we'll want as many audible and visual responses to allow us to determine how far a device has reached.

### FUTURE TO-DO LIST:
* [ ] :green_circle: Replace the existing Web GUI with a more JS/JQ/BOOT friendly variant (and more visually appealing.)
* [ ] :green_circle: Thorough testing of networking protocols/keys/etc. (WPA/WPA2) especially on DECO and TOMATO routers
* [ ] :green_circle: Add to Web GUI a location to determine hot-spots, starting position (after resetting motor), etc.
* [ ] :green_circle: Add the ability for a fast/slow PTZ "scan" of the area (left-right, height and min/max scan area)
* [ ] :green_circle: Create a time based replacement for night vision on/off



