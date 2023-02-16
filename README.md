# RavenSystem's AsusWRT-Merlin configuration

[![Donate](https://img.shields.io/badge/donate-PayPal-blue.svg)](https://paypal.me/ravensystem)

[![Twitter](https://img.shields.io/twitter/follow/RavenSystem.svg?style=social)](https://twitter.com/RavenSystem)

[![Chat](https://img.shields.io/discord/594630635696553994?style=social)](https://discord.gg/v8hyxj2)

This is the configuration from my AsusWRT routers, with [AsusWRT-Merlin firmware](https://www.asuswrt-merlin.net) installed.

I have tested different Asus router models, and I have experience developing some AsusWRT-Merlin Addons. My setup manages more than 70+ network connected devices (60+ wifi devices).

Check [AsusWRT-Merlin supported devices](https://github.com/RMerl/asuswrt-merlin.ng/wiki/Supported-Devices)

Under [Config](Config#main-router-configuration) you will find all config options and screenshots.

Remember to check [AMTM](https://diversion.ch) plugins and options, included with AsusWRT-Merlin.

Router VPN Server for Apple devices: [AAH: Always At Home](https://github.com/RavenSystem/AlwaysAtHome)

## Tips

Some scripts options to customize your router. Please, before read [AsusWRT-Merlin.ng User Scripts](https://github.com/RMerl/asuswrt-merlin.ng/wiki/User-scripts) to know how they works.

### Check and customize SWAP

If your router has a SWAP file installed by [AMTM](https://diversion.ch), you can check and customize it.

To check, run it and see value:
```shell
cat /proc/sys/vm/swappiness
```

If value is `0`, or if you want to use a different value, run or add this line with your new value (`72` is an example)...
```shell
echo 72 > /proc/sys/vm/swappiness
```

... into this file...
```shell
/jffs/scripts/post-mount
```

... after line:
```shell
swapon /tmp/mnt/pendrive/myswap.swp # Added by amtm
```

### Remove Asus propietary diagnostic tool

This is a service used to check router ports and show their status in WebUI. It is useless because under Tools menu you can see ports status, and can be disabled to save RAM.

To disable it, add this line...
```shell
service stop_conn_diag
```

... to the end of this file:
```shell
/jffs/scripts/services-start
```
