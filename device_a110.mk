#Default settings
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)
$(call inherit-product, device/common/gps/gps_us_supl.mk)
$(call inherit-product-if-exists, vendor/micromax/a110/a110-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/micromax/a110/overlay

PRODUCT_AAPT_CONFIG := normal hdpi mdpi
PRODUCT_AAPT_PREF_CONFIG := hdpi

$(call inherit-product, build/target/product/full.mk)

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := full_a110
PRODUCT_DEVICE := a110
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    ro.secure=0\
    ro.allow.mock.location=1\
    persist.mtk.aee.aed=on\
    ro.debuggable=1\
    persist.sys.usb.config=mass_storage,adb\
    persist.service.acm.enable=0\
    ro.mount.fs=EXT4\
    ro.boot.selinux=permissive \
    persist.sys.usb.config=mass_storage,adb \
    persist.service.acm.enable=0\
    
    PRODUCT_PROPERTY_OVERRIDES += \
    ro.secure=0\
    ro.allow.mock.location=1\
    persist.mtk.aee.aed=on\
    ro.debuggable=1\
    persist.sys.usb.config=mass_storage,adb\
    persist.service.acm.enable=0\
    ro.mount.fs=EXT4\
    ro.boot.selinux=permissive \
    persist.sys.usb.config=mass_storage,adb \
    persist.service.acm.enable=0\
    
PRODUCT_PACKAGES += \
    libui-mtk


#Permissions device files
PRODUCT_COPY_FILES += \
	device/micromax/a110/permissions/android.hardware.bluetooth.xml:system/etc/permissions/android.hardware.bluetooth.xml\
	device/micromax/a110/permissions/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml\
	device/micromax/a110/permissions/android.hardware.camera.xml:system/etc/permissions/android.hardware.camera.xml\
	device/micromax/a110/permissions/android.hardware.faketouch.xml:system/etc/permissions/android.hardware.faketouch.xml\
	device/micromax/a110/permissions/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml\
	device/micromax/a110/permissions/android.hardware.microphone.xml:system/etc/permissions/android.hardware.microphone.xml\
	device/micromax/a110/permissions/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml\
	device/micromax/a110/permissions/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml\
	device/micromax/a110/permissions/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml\
	device/micromax/a110/permissions/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml\
	device/micromax/a110/permissions/android.hardware.touchscreen.multitouch.distinct.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.distinct.xml\
	device/micromax/a110/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml\
	device/micromax/a110/permissions/android.hardware.touchscreen.multitouch.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.xml\
	device/micromax/a110/permissions/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml\
	#Not present on the original stock rom of the device
	#device/micromax/a110/permissions/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml\
	device/micromax/a110/permissions/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml\
	device/micromax/a110/permissions/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml\
	device/micromax/a110/permissions/android.software.live_wallpaper.xml:system/etc/permissions/android.software.live_wallpaper.xml\
	device/micromax/a110/permissions/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml\
	device/micromax/a110/permissions/android.software.sip.xml:system/etc/permissions/android.software.sip.xml\
	device/micromax/a110/permissions/com.android.location.provider.xml:system/etc/permissions/com.android.location.provider.xml\
	device/micromax/a110/permissions/com.google.android.maps.xml:system/etc/permissions/com.google.android.maps.xml\
	device/micromax/a110/permissions/com.google.android.media.effects.xml:system/etc/permissions/com.google.android.media.effects.xml\
	device/micromax/a110/permissions/com.google.widevine.software.drm.xml:system/etc/permissions/com.google.widevine.software.drm.xml\
	device/micromax/a110/permissions/com.mediatek.location.provider.xml:system/etc/permissions/com.mediatek.location.provider.xml\
	device/micromax/a110/permissions/features.xml:system/etc/permissions/features.xml\
	device/micromax/a110/permissions/gpsconfig.xml:system/etc/permissions/gpsconfig.xml\
	device/micromax/a110/permissions/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml\
	device/micromax/a110/permissions/platform.xml:system/etc/permissions/platform.xml\

PRODUCT_COPY_FILES += \
    device/micromax/a110/prebuilt/root/init.a110.rc:root/init.a110.rc \
    device/micromax/a110/prebuilt/root/init.a110.usb.rc:root/init.mt6577.usb.rc \
    device/micromax/a110/prebuilt/root/ueventd.a110.rc:root/ueventd.mt6577.rc \
    device/micromax/a110/recovery/root/ueventd.rc:recovery/ueventd.rc \
    device/micromax/a110/prebuilt/root/init.protect.rc:root/init.protect.rc \
    device/micromax/a110/prebuilt/system/etc/vold.fstab:system/etc/vold.fstab \
    device/micromax/a110/prebuilt/system/usr/keylayout/a110-kpd.kl:/system/usr/keylayout/a110_kpd.kl\
    device/micromax/a110/prebuilt/system/etc/.tp/thermal.conf:/system/etc/.tp/thermal.conf\
    device/micromax/a110/prebuilt/system/etc/.tp/thermal.off.conf:/system/etc/.tp/thermal.off.conf \
    device/micromax/a110/prebuilt/system/etc/mpeg4_venc_parameter.cfg:/system/etc/mpeg4_venc_parameter.cfg \
    device/micromax/a110/prebuilt/system/etc/mtk_omx_core.cfg:/system/etc/mtk_omx_core.cfg \
    device/micromax/a110/prebuilt/system/etc/player.cfg:/system/etc/player.cfg \
    device/micromax/a110/prebuilt/system/etc/srs_processing.cfg:/system/etc/srs_processing.cfg
