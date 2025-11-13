#!/bin/bash

DISABLE_PKGS=(
  com.miui.cloudbackup
  de.telekom.tsc
  # com.miui.powerkeeper          # It can improve performance but battery tends to drain faster and get hotter
)

UNINSTALL_PKGS=(  
  com.miui.analytics              # Xiaomi analytics & telemetry
  com.miui.cleaner                # MIUI cleaner app (ad-heavy)
  com.miui.extraphoto             # Extra photo filters (camera add-on)
  com.miui.videoplayer            # Default MIUI video player
  com.miui.hybrid.accessory       # Webview hybrid engine (used by Mi Browser)
  com.miui.android.fashiongallery # Wallpaper recommendation service
  com.miui.miwallpaper            # Dynamic wallpaper engine (not needed)
  com.miui.player                 # Default MIUI Music app
  com.miui.phrase                 # Mi Keyboard phrase templates
  com.miui.bugreport              # Feedback app  
  com.miui.daemon                 # Data analytics collector
  com.miui.yellowpage             # MIUI Yellow Pages integration  
  com.miui.qr                     # MIUI QR code scanner
  com.xiaomi.scanner
  com.mi.android.globalminusscreen # "App Vault" - leftmost screen
  com.xiaomi.mipicks              # GetApps (Xiaomi's app store)
  com.xiaomi.upnp                 # Mi Share / DLNA sharing service
  com.xiaomi.discover             # MIUI Discover feed
  cn.wps.xiaomi.abroad.lite       # Mi WPS Office
  com.amazon.appmanager           # Amazon bloatware (often preloaded)
  com.facebook.appmanager
  com.facebook.services
  com.facebook.system
  com.google.android.apps.subscriptions.red # Google One subscriptions manager
  com.google.android.apps.turbo   # Digital Wellbeing booster
  com.google.android.apps.walletnfcrel # Google Wallet / Pay (if unused)
  com.google.android.projection.gearhead # Android Auto (if unused)
  com.google.android.apps.wellbeing # Digital Wellbeing (heavy background use)
  com.android.providers.downloads.ui # Download Manager UI (if you use a 3rd party downloader)
  com.google.android.apps.googleassistant # Google Assistant (if unused)
  com.google.android.apps.messaging # Google Messages (if using another SMS app)
  com.google.android.googlequicksearchbox
  com.xiaomi.miplay_client
  com.xiaomi.mi_connect_service
  com.miui.audiomonitor
  com.miui.audioeffect
  com.mediatek.ygps
  com.longcheertel.cit
  com.google.android.onetimeinitializer
  com.google.android.apps.restore
  com.miui.face.overlay.miui
  com.google.android.ar.lens
  com.miui.wallpaper.overlay
  com.miui.wallpaper.overlay.customize
  com.google.android.printservice.recommendation
  com.google.android.partnersetup
  com.mediatek.callrecorder
  com.android.printspooler
  com.android.bips
  com.android.egg
  com.android.dreams.basic
  com.miui.msa.global
  com.miui.freeform
  com.xiaomi.payment
  com.miui.cloudservice
  com.miui.backup
  com.miui.micloudsync
  com.tencent.soter.soterserver
  com.milink.service
  com.miui.hybrid
  com.xiaomi.xmsf
  com.android.providers.partnerbookmarks
  com.xiaomi.simactivate.service
  com.android.wallpaperbackup
  com.google.android.marvin.talkback
  com.google.android.feedback
  com.google.android.tts
)

# Disabling packages:
for pkg in "${DISABLE_PKGS[@]}"; do
echo "Disabling: $pkg"
./adb shell pm disable-user --user 0 "$pkg"
echo ""
done

# Uninstalling packages:
for pkg in "${UNINSTALL_PKGS[@]}"; do
echo "Uninstalling: $pkg"
./adb shell pm uninstall --user 0 "$pkg"
echo ""
done

# To re-enable
# ./adb shell pm enable --user 0 "$pkg"

echo "✅ Done. Rebooting..."
./adb reboot
