#!/bin/bash

mkdir -p /jffs/addons/dhcp-relay
echo '#!/bin/sh
CONFIG=$1
source /usr/sbin/helper.sh
IPADDR="$(nvram get lan_ipaddr)"
ROUTER="$(nvram get lan_gateway)"
pc_append "dhcp-relay=$IPADDR,$ROUTER" $CONFIG
logger -t "(dnsmasq.postconf)" "Added DHCP relay from $IPADDR to $ROUTER"
' > /jffs/addons/dhcp-relay/dhcp-relay.postconf
chmod a+x /jffs/addons/dhcp-relay/dhcp-relay.postconf

mkdir -p /jffs/scripts
echo '#!/bin/sh
sh /jffs/addons/dhcp-relay/dhcp-relay.postconf "$1"
' >> /jffs/scripts/dnsmasq.postconf
chmod a+x /jffs/scripts/dnsmasq.postconf

nvram set jffs2_scripts=1
nvram commit

reboot
