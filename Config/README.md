# Main Router Configuration

Here, there are screenshots about all basic router configuration.

Each screenshot filename is Main Menu (left colunm from router WebUI) followed by selected Tab.

Once all options are set from router WebUI, it is recommended to enter to router and ALL AiMesh nodes using SSH 
and run this to remove wifi group rekey completely, enable Target Wake Time, and set Bluetooth coexistence to pre-emptive:

```shell
# Wifi Rekey
nvram set wl_wpa_gtk_rekey=0
nvram set wl0_wpa_gtk_rekey=0
nvram set wl0.1_wpa_gtk_rekey=0
nvram set wl0.2_wpa_gtk_rekey=0
nvram set wl0.3_wpa_gtk_rekey=0
nvram set wl0.4_wpa_gtk_rekey=0
nvram set wl0.5_wpa_gtk_rekey=0
nvram set wl1_wpa_gtk_rekey=0
nvram set wl1.1_wpa_gtk_rekey=0
nvram set wl1.2_wpa_gtk_rekey=0
nvram set wl1.3_wpa_gtk_rekey=0

# Wifi Target Wake Time
nvram set wl0_twt=1
nvram set wl1_twt=1
nvram set wl_twt=1

# Bluetooth coexistence 
nvram set wl0_btc_mode=2
nvram set wl_btc_mode=2

# Preamble
nvram set wl0_plcphdr=short
nvram set wl1_plcphdr=short
nvram set wl_plcphdr=short

# DTIM
nvram set wl_dtim=3

# IGMP
nvram set wl_wmf_igmpq_filter=1
nvram set wl_wmf_ucigmp_query=1

# Save changes
nvram commit
```

A reboot is needed when finished.

