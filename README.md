# Gnome indicator for Symo Gen24
This is a small program for gnome which creates an indicator inside your taskbar to show the stats of your inverter (compatible with Symo Gen24).
It shows the current photovoltaik-power, your current power consumption and battery load.

![Example](docs/example-image.png)

You can see: `icon - current production - current load - battery load`

## Install
Best is to simply install the `.deb`-package. This can be downloaded here or you build it yourself:
* Clone the repo
* `./build.sh`

## Config
Open the configuration from the tray icon after running or manually open `~/.config/gnome-indicator.ini`. Put the following there:

```ini
[symogen24]
SYMO_IP=<ip>
INTERVAL=1000
```

The `INTERVAL` is the polling interval in milliseconds.