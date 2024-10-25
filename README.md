# Java Process Monitor

This script is designed to monitor Java process instances running on your system, specifically for Minecraft. It provides information about the last deleted file, the start time and execution duration of the Minecraft process, as well as the active mods in use. ( It will also find those hidden through the .hidden file, as well as those that have been moved or deleted )

## Features

- **Check Java Process:** Verifies if the specified Java process is running.
- **Time Information:** Displays the date of the last deleted file, the start time of Minecraft, and its uptime.
- **Active Mods List:** Lists the mods currently active in the running Minecraft process.

## Requirements

- **Operating System:** Must be Linux-based (Unix-like environment).
- **Shell:** This is a Bash script and needs to be executed in a Bash shell.
- **Package:** Must have lsof, awk, ps and grep

## Possible output

```
----------------------
Last deleted file at: [14:22]
Minecraft started at: [25 16:03:45 2024]
Minecraft execution time: [01:58]
----------------------
Mods in the process with PID 32464:
BetterHurtCam-2.2.0.jar
entityculling-forge-mc1.8.9-1.5.0.jar
HitDelayFix-1.0.1.jar
OptiFine_1.8.9_HD_U_M5.jar
PolyCrosshair-1.8.9-forge-1.0.3.jar
PolyPatcher-1.8.9-forge-1.9.0.jar
PolySprint-1.8.9-forge-1.0.1.jar
PolyTime-1.8.9-forge-1.0.2.jar
TcpNoDelayMod-2.0.jar
----------------------
```

