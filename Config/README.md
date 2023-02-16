# Main Router Configuration

Here, there are screenshots about all basic router configuration.

Each screenshot filename is Main Menu (left colunm from router WebUI) followed by selected Tab.

Once all options are set from router WebUI, it is recommended to enter to router and ALL AiMesh nodes using SSH 
and run this to remove wifi group rekey completely and set Bluetooth coexistence to pre-emptive:

```shell
# Wifi Rekey
nvram set wl_wpa_gtk_rekey=0
nvram set wl0_wpa_gtk_rekey=0
nvram set wl0.1_wpa_gtk_rekey=0
nvram set wl0.2_wpa_gtk_rekey=0
nvram set wl0.3_wpa_gtk_rekey=0
nvram set wl1_wpa_gtk_rekey=0
nvram set wl1.1_wpa_gtk_rekey=0
nvram set wl1.2_wpa_gtk_rekey=0
nvram set wl1.3_wpa_gtk_rekey=0

# Bluetooth coexistence 
nvram set wl0_btc_mode=2
nvram set wl_btc_mode=2

# Save changes
nvram commit
```

A reboot is needed when finished.
