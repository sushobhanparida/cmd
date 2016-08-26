@echo off
echo CREATING HOTSPOT
netsh wlan stop hostednetwork
set /p ssid=Enter SSID:
set /p pass=Enter password:
netsh wlan set hostednetwork mode=allow ssid=%ssid% key=%pass%
netsh wlan start hostednetwork
PAUSE
echo HOTSPOT CREATED
ECHO ON
