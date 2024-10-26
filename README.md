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

## Usage

You can execute the program with this commands:
- **fish** -> 'wget -qO- https://raw.githubusercontent.com/ItalianG0urmet/screenshare-linux-minecraft-tool/main/tool.sh | bash'
- **bash** -> 'bash <(wget -qO- https://raw.githubusercontent.com/ItalianG0urmet/screenshare-linux-minecraft-tool/main/tool.sh)'
If you want to know the time when the last file was deleted, simply run **ls -lt "$HOME/.local/share/Trash/" | awk 'NR==2 {print $8}'**

## Possible output

```
----------------------
Last deleted file at: [18:57]
Minecraft started at: [26 19:53:32 2024]
Minecraft execution time: [37:26]
----------------------
Mods in the process with PID 61396:
Chatting-1.8.9-forge-2.0.6.jar
CrashPatch-1.8.9-forge-2.0.1.jar
entityculling-forge-mc1.8.9-1.5.0.jar
HitDelayFix-1.0.1.jar
Hytils Reborn-1.8.9-forge-1.7.3.jar
OptiFine_1.8.9_HD_U_M5.jar
OverflowAnimations-1.8.9-forge-2.2.5.jar
PolyCrosshair-1.8.9-forge-1.0.3.jar
PolyPatcher-1.8.9-forge-1.9.0.jar
PolySprint-1.8.9-forge-1.0.1.jar
PolyTime-1.8.9-forge-1.0.2.jar
TcpNoDelayMod-2.0.jar
----------------------
Check for suspect .so:
/home/gourmet/.minecraft/1.8.9
/home/gourmet/.minecraft/1.8.9
/home/gourmet/.minecraft/runtime/lxtap.so
/home/gourmet/.minecraft/bin/a3b5ffede9efb4cdeaf18fa415991c9f3f3152ae/libopenal64.so
/home/gourmet/.minecraft/runtime/jre-legacy/linux/jre-legacy/lib/amd64/liblcms.so
/home/gourmet/.minecraft/runtime/jre-legacy/linux/jre-legacy/lib/amd64/libjpeg.so
/home/gourmet/.minecraft/bin/a3b5ffede9efb4cdeaf18fa415991c9f3f3152ae/liblwjgl64.so
/home/gourmet/.minecraft/runtime/jre-legacy/linux/jre-legacy/lib/amd64/libjawt.so
/home/gourmet/.minecraft/runtime/jre-legacy/linux/jre-legacy/lib/amd64/libfontmanager.so
/home/gourmet/.minecraft/runtime/jre-legacy/linux/jre-legacy/lib/amd64/libunpack.so
/home/gourmet/.minecraft/runtime/jre-legacy/linux/jre-legacy/lib/amd64/libsunec.so
/home/gourmet/.minecraft/runtime/jre-legacy/linux/jre-legacy/lib/amd64/libawt_xawt.so
/home/gourmet/.minecraft/runtime/jre-legacy/linux/jre-legacy/lib/amd64/libawt.so
/home/gourmet/.minecraft/runtime/jre-legacy/linux/jre-legacy/lib/amd64/libnio.so
/home/gourmet/.minecraft/runtime/jre-legacy/linux/jre-legacy/lib/amd64/libnet.so
/home/gourmet/.minecraft/runtime/jre-legacy/linux/jre-legacy/lib/amd64/libmanagement.so
/home/gourmet/.minecraft/runtime/jre-legacy/linux/jre-legacy/lib/amd64/libzip.so
/home/gourmet/.minecraft/runtime/jre-legacy/linux/jre-legacy/lib/amd64/libjava.so
/home/gourmet/.minecraft/runtime/jre-legacy/linux/jre-legacy/lib/amd64/libverify.so
/home/gourmet/.minecraft/runtime/jre-legacy/linux/jre-legacy/lib/amd64/server/libjvm.so
/home/gourmet/.minecraft/runtime/jre-legacy/linux/jre-legacy/lib/amd64/jli/libjli.so
----------------------

```

