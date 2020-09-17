#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/platform/bootdevice/by-name/recovery:14263200:9f8ac15ce4f8d2af3c6323a9e80e04db2825e7e2; then
  applypatch  EMMC:/dev/block/platform/bootdevice/by-name/boot:8969120:8f0fca0ead89fa99844681b8b58205cbe05824eb EMMC:/dev/block/platform/bootdevice/by-name/recovery 9f8ac15ce4f8d2af3c6323a9e80e04db2825e7e2 14263200 8f0fca0ead89fa99844681b8b58205cbe05824eb:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
