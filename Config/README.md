# Main Router Configuration

Here, there are screenshots about all basic router configuration.

Each screenshot file name is Main menu (left colunm from router WebUI) followed by selected Tab.

Once all options are set from router WebUI, it is recommended to enter to router and ALL AiMesh nodes using SSH 
and run this to remove wifi group rekey completely:

```shell
nvram set wl_wpa_gtk_rekey=0
nvram set wl0_wpa_gtk_rekey=0
nvram set wl0.1_wpa_gtk_rekey=0
nvram set wl0.2_wpa_gtk_rekey=0
nvram set wl0.3_wpa_gtk_rekey=0
nvram set wl1_wpa_gtk_rekey=0
nvram set wl1.1_wpa_gtk_rekey=0
nvram set wl1.2_wpa_gtk_rekey=0
nvram set wl1.3_wpa_gtk_rekey=0
nvram commit
```

A reboot is recommened to finish.