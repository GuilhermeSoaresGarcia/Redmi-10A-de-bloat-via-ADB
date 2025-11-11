#!/bin/bash

PKGS=(
  com.miui.extraphoto
  com.miui.securityadd
  com.miui.guardprovider
  com.miui.cleaner
  com.miui.audiomonitor
  com.miui.cit
  com.miui.wallpaper.overlay
  com.miui.wallpaper.overlay.customize
  com.miui.face.overlay.miui
  com.miui.powerkeeper
  com.miui.misettings
  com.miui.gallery
  com.xiaomi.finddevice
  com.xiaomi.upnp
  com.mi.globallayout
  com.miui.qr
  com.android.providers.downloads.ui
  com.google.android.apps.wallpaper
  com.google.android.printservice.recommendation
  com.google.android.partnersetup
  com.google.android.onetimeinitializer
  com.google.android.apps.restore
  com.mediatek.engineermode
  com.mediatek.ygps
  com.mediatek.callrecorder
  com.android.egg
  com.android.dreams.basic
  com.android.wallpaperpicker
  com.android.wallpapercropper
  com.android.printspooler
  com.android.bips
  com.android.htmlviewer
)

for pkg in "${PKGS[@]}"; do
  ./adb shell pm disable-user --user 0 "$pkg"

# To re-enable
# ./adb shell pm enable --user 0 "$pkg"

# To uninstall:
# ./adb shell pm uninstall --user 0 "$pkg"

done

echo "✅ Done. Reboot your phone and test stability for a few days."
echo "If all is fine, set to uninstall commands later."

