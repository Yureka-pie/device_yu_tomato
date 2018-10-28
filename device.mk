#
# Copyright (C) 2016 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# Overlay
DEVICE_PACKAGE_OVERLAYS += \
    $(LOCAL_PATH)/overlay \
    $(LOCAL_PATH)/overlay-lineage

# Due to multi-density builds, these are set by init
PRODUCT_SYSTEM_PROPERTY_BLACKLIST := ro.product.model ro.sf.lcd_density

# Call the proprietary setup
$(call inherit-product, vendor/yu/tomato/tomato-vendor.mk)

# Audio
PRODUCT_PACKAGES += \
    audio.a2dp.default \
    audio.r_submix.default \
    audio.usb.default \
    tinymix

PRODUCT_PACKAGES += \
    audiod \
    audio.primary.msm8916 \
    audio.a2dp.default \
    audio.usb.default \
    audio.r_submix.default \
    libaudio-resampler

PRODUCT_PACKAGES += \
    libqcomvisualizer \
    libqcomvoiceprocessing \
    libqcomvoiceprocessingdescriptors \
    libqcompostprocbundle

PRODUCT_PACKAGES += \
    android.hardware.audio@2.0-impl \
    android.hardware.audio@2.0-service \
    android.hardware.audio.effect@2.0-impl \
    android.hardware.broadcastradio@1.0-impl
#   android.hardware.soundtrigger@2.0-impl

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/audio/acdb/MTP_Bluetooth_cal.acdb:system/etc/acdbdata/MTP/MTP_Bluetooth_cal.acdb \
    $(LOCAL_PATH)/audio/acdb/MTP_General_cal.acdb:system/etc/acdbdata/MTP/MTP_General_cal.acdb \
    $(LOCAL_PATH)/audio/acdb/MTP_Global_cal.acdb:system/etc/acdbdata/MTP/MTP_Global_cal.acdb \
    $(LOCAL_PATH)/audio/acdb/MTP_Handset_cal.acdb:system/etc/acdbdata/MTP/MTP_Handset_cal.acdb \
    $(LOCAL_PATH)/audio/acdb/MTP_Hdmi_cal.acdb:system/etc/acdbdata/MTP/MTP_Hdmi_cal.acdb \
    $(LOCAL_PATH)/audio/acdb/MTP_Headset_cal.acdb:system/etc/acdbdata/MTP/MTP_Headset_cal.acdb \
    $(LOCAL_PATH)/audio/acdb/MTP_Speaker_cal.acdb:system/etc/acdbdata/MTP/MTP_Speaker_cal.acdb \
    $(LOCAL_PATH)/audio/audio_effects.conf:system/vendor/etc/audio_effects.conf \
    $(LOCAL_PATH)/audio/audio_platform_info.xml:system/vendor/etc/audio_platform_info.xml \
    $(LOCAL_PATH)/audio/audio_policy.conf:system/vendor/etc/audio_policy.conf \
    $(LOCAL_PATH)/audio/mixer_paths.xml:system/vendor/etc/mixer_paths.xml

#Apps
PRODUCT_PACKAGES +=\
PixelLauncher \
MiXplorer \
MarkupGoogle

#Apn
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/apns-conf.xml:system/etc/apns-conf.xml

# Bluetooth
PRODUCT_PACKAGES += \
    yl_btmac \
    libbt-vendor \
    android.hardware.bluetooth@1.0-impl \
    android.hardware.bluetooth@1.0-service

# Boot animation
TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 720

# Camera
PRODUCT_PACKAGES += \
    android.hardware.camera.provider@2.4-impl \
    camera.device@3.2-impl \
    camera.msm8916 \
    libmm-qcamera \
    SnapdragonCamera \
    FootejCamera

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/external_camera_config.xml:system/vendor/etc/external_camera_config.xml

#Camera Sounds
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/camsounds/camera_click.ogg:system/product/media/audio/ui \
    $(LOCAL_PATH)/camsounds/camera_focus.ogg:system/product/media/audio/ui \
    $(LOCAL_PATH)/camsounds/VideoStop.ogg:system/product/media/audio/ui \
    $(LOCAL_PATH)/camsounds/VideoRecord.ogg:system/product/media/audio/ui

# Display
PRODUCT_PACKAGES += \
    android.hardware.graphics.allocator@2.0-impl \
    android.hardware.graphics.allocator@2.0-service \
    android.hardware.graphics.composer@2.1-impl \
    android.hardware.graphics.mapper@2.0-impl \
    android.hardware.memtrack@1.0-impl \
    android.hardware.memtrack@1.0-service \
    gralloc.msm8916 \
    hwcomposer.msm8916 \
    libgenlock \
    libtinyxml \
    memtrack.msm8916

# DRM
PRODUCT_PACKAGES += \
    android.hardware.drm@1.0-impl \
    android.hardware.drm@1.0-service \
    android.hardware.drm@1.0-service.widevine

#FM
PRODUCT_PACKAGES += \
    FMRadio \
    libfmjni

# GPS
PRODUCT_PACKAGES += \
    android.hardware.gnss@1.0-impl \
    android.hardware.gnss@1.0-service \
    gps.msm8916

PRODUCT_PACKAGES += \
    libshims_get_process_name \
    libshims_flp

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/gps/flp.conf:system/etc/flp.conf \
    $(LOCAL_PATH)/gps/gps.conf:system/etc/gps.conf \
    $(LOCAL_PATH)/gps/izat.conf:system/etc/izat.conf \
    $(LOCAL_PATH)/gps/sap.conf:system/etc/sap.conf

# HIDL
PRODUCT_PACKAGES += \
    android.hidl.base@1.0 \
    android.hidl.manager@1.0

#Health
PRODUCT_PACKAGES += \
      android.hardware.health@1.0-impl \
      android.hardware.health@1.0-service

# Init scripts
PRODUCT_PACKAGES += \
    fstab.qcom \
    init.target.rc \
    init.qcom.rc \
    init.qcom.mem.sh \
    init.qcom.power.rc \
    init.qcom.usb.rc \
    init.qcom.ssr.rc \
    init.recovery.qcom.rc \
    ueventd.qcom.rc \
    init.qcom.bt.sh \
    set_baseband.sh

# IRQ balance
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/msm_irqbalance.conf:system/vendor/etc/msm_irqbalance.conf

# Keylayout
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/keylayout/goodix.kl:system/vendor/usr/keylayout/goodix.kl \
    $(LOCAL_PATH)/keylayout/gpio-keys.kl:system/vendor/usr/keylayout/gpio-keys.kl

# Keymaster HAL
PRODUCT_PACKAGES += \
    android.hardware.keymaster@3.0-impl \
    android.hardware.keymaster@3.0-service \
    keystore.msm8916

# Lights
PRODUCT_PACKAGES += \
    android.hardware.light@2.0-impl \
    android.hardware.light@2.0-service \
    lights.msm8916

#Media
PRODUCT_PACKAGES += \
    libOmxAacEnc \
    libOmxAmrEnc \
    libOmxCore \
    libOmxEvrcEnc \
    libOmxQcelp13Enc \
    libOmxVdec \
    libOmxVenc \
    libstagefrighthw

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/media_codecs.xml:system/vendor/etc/media_codecs.xml \
    $(LOCAL_PATH)/configs/media_profiles_V1_0.xml:system/vendor/etc/media_profiles_V1_0.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_audio.xml:system/vendor/etc/media_codecs_google_audio.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_telephony.xml:system/vendor/etc/media_codecs_google_telephony.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_video_le.xml:system/vendor/etc/media_codecs_google_video_le.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_video.xml:system/vendor/etc/media_codecs_google_video.xml

# Nubia charger
PRODUCT_PACKAGES += \
    poweroffcharge

PRODUCT_COPY_FILES += \
$(LOCAL_PATH)/charger/images/POWER1.png:$(TARGET_OUT_DIR)/root/res/images/POWER1.png \
$(LOCAL_PATH)/charger/images/POWER10.png:$(TARGET_OUT_DIR)/root/res/images/POWER10.png \
$(LOCAL_PATH)/charger/images/POWER2.png:$(TARGET_OUT_DIR)/root/res/images/POWER2.png \
$(LOCAL_PATH)/charger/images/POWER3.png:$(TARGET_OUT_DIR)/root/res/images/POWER3.png \
$(LOCAL_PATH)/charger/images/POWER4.png:$(TARGET_OUT_DIR)/root/res/images/POWER4.png \
$(LOCAL_PATH)/charger/images/POWER5.png:$(TARGET_OUT_DIR)/root/res/images/POWER5.png \
$(LOCAL_PATH)/charger/images/POWER6.png:$(TARGET_OUT_DIR)/root/res/images/POWER6.png \
$(LOCAL_PATH)/charger/images/POWER7.png:$(TARGET_OUT_DIR)/root/res/images/POWER7.png \
$(LOCAL_PATH)/charger/images/POWER8.png:$(TARGET_OUT_DIR)/root/res/images/POWER8.png \
$(LOCAL_PATH)/charger/images/POWER9.png:$(TARGET_OUT_DIR)/root/res/images/POWER9.png \
$(LOCAL_PATH)/charger/images/background.png:$(TARGET_OUT_DIR)/root/res/images/background.png \
$(LOCAL_PATH)/charger/images/chargeLogo.png:$(TARGET_OUT_DIR)/root/res/images/chargeLogo.png \
$(LOCAL_PATH)/charger/images/error.png:$(TARGET_OUT_DIR)/root/res/images/error.png \
$(LOCAL_PATH)/charger/images/full.png:$(TARGET_OUT_DIR)/root/res/images/full.png \
$(LOCAL_PATH)/charger/images/green_0.png:$(TARGET_OUT_DIR)/root/res/images/green_0.png \
$(LOCAL_PATH)/charger/images/green_1.png:$(TARGET_OUT_DIR)/root/res/images/green_1.png \
$(LOCAL_PATH)/charger/images/percentage.png:$(TARGET_OUT_DIR)/root/res/images/percentage.png \
$(LOCAL_PATH)/charger/images/percentage_full.png:$(TARGET_OUT_DIR)/root/res/images/percentage_full.png \
$(LOCAL_PATH)/charger/images/red_0.png:$(TARGET_OUT_DIR)/root/res/images/red_0.png \
$(LOCAL_PATH)/charger/images/red_1.png:$(TARGET_OUT_DIR)/root/res/images/red_1.png \
$(LOCAL_PATH)/charger/images/red_2.png:$(TARGET_OUT_DIR)/root/res/images/red_2.png \
$(LOCAL_PATH)/charger/images/red_3.png:$(TARGET_OUT_DIR)/root/res/images/red_3.png \
$(LOCAL_PATH)/charger/images/red_4.png:$(TARGET_OUT_DIR)/root/res/images/red_4.png \
$(LOCAL_PATH)/charger/images/red_5.png:$(TARGET_OUT_DIR)/root/res/images/red_5.png \
$(LOCAL_PATH)/charger/images/red_6.png:$(TARGET_OUT_DIR)/root/res/images/red_6.png \
$(LOCAL_PATH)/charger/images/red_7.png:$(TARGET_OUT_DIR)/root/res/images/red_7.png \
$(LOCAL_PATH)/charger/images/red_8.png:$(TARGET_OUT_DIR)/root/res/images/red_8.png \
$(LOCAL_PATH)/charger/images/red_9.png:$(TARGET_OUT_DIR)/root/res/images/red_9.png

#Power HAL
PRODUCT_PACKAGES += \
    android.hardware.power@1.0-impl \
    android.hardware.power@1.0-service \
    power.msm8916

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/vendor/etc/permissions/handheld_core_hardware.xml \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/vendor/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/vendor/etc/permissions/android.hardware.sensor.gyroscope.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/vendor/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/vendor/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.ethernet.xml:system/vendor/etc/permissions/android.hardware.ethernet.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:system/vendor/etc/permissions/android.hardware.usb.host.xml \
    frameworks/native/data/etc/android.hardware.audio.low_latency.xml:system/vendor/etc/permissions/android.hardware.audio.low_latency.xml \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/vendor/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/vendor/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/vendor/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.software.midi.xml:system/vendor/etc/permissions/android.software.midi.xml \
    frameworks/native/data/etc/android.hardware.bluetooth.xml:system/vendor/etc/permissions/android.hardware.bluetooth.xml \
    frameworks/native/data/etc/android.hardware.bluetooth_le.xml:system/vendor/etc/permissions/android.hardware.bluetooth_le.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/vendor/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.hardware.telephony.cdma.xml:system/vendor/etc/permissions/android.hardware.telephony.cdma.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/vendor/etc/permissions/android.software.sip.voip.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/vendor/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/vendor/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/vendor/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/vendor/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.opengles.aep.xml:system/vendor/etc/permissions/android.hardware.opengles.aep.xml

#Radio
# IRSC
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/sec_config:system/etc/sec_config

# RIL
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/data/netmgr_config.xml:system/etc/data/netmgr_config.xml \
    $(LOCAL_PATH)/configs/data/qmi_config.xml:system/etc/data/qmi_config.xml \
    $(LOCAL_PATH)/configs/data/dsi_config.xml:system/etc/data/dsi_config.xml

PRODUCT_PACKAGES += \
    libcnefeatureconfig \
    librmnetctl \
    libxml2

# RenderScript HAL
PRODUCT_PACKAGES += \
    android.hardware.renderscript@1.0-impl \
    android.hardware.renderscript@1.0-service

#Recovery
PRODUCT_PACKAGES += \
    librecovery_updater_cm

# Seccomp policy
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/seccomp_policy/mediacodec.policy:system/vendor/etc/seccomp_policy/mediacodec.policy

# Sensors
PRODUCT_PACKAGES += \
    android.hardware.sensors@1.0-impl \
    libjni_proximityCalibrate \
    ProximityCalibrate \
    sensors.msm8916

# Screen density
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := xxhdpi

# TextClassifier smart selection model
PRODUCT_PACKAGES += \
    textclassifier.bundle1

# USB HAL
PRODUCT_PACKAGES += \
    android.hardware.usb@1.0-service.cyanogen_8916

# Vibrator
PRODUCT_PACKAGES += \
    android.hardware.vibrator@1.0-impl \
    android.hardware.vibrator@1.0-service

#Wifi
PRODUCT_PACKAGES += \
    android.hardware.wifi@1.0-service

PRODUCT_PACKAGES += \
    libwcnss_qmi \
    wcnss_service \
    libwpa_client

PRODUCT_PACKAGES += \
    wificond \
    wifilogd \
    hostapd \
    wpa_supplicant \
    wpa_supplicant.conf

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/wifi/WCNSS_cfg.dat:system/vendor/firmware/wlan/prima/WCNSS_cfg.dat \
    $(LOCAL_PATH)/wifi/WCNSS_qcom_wlan_nv.bin:system/vendor/firmware/wlan/prima/WCNSS_qcom_wlan_nv.bin \
    $(LOCAL_PATH)/configs/p2p_supplicant_overlay.conf:system/vendor/etc/wifi/p2p_supplicant_overlay.conf \
    $(LOCAL_PATH)/configs/wpa_supplicant_overlay.conf:system/vendor/etc/wifi/wpa_supplicant_overlay.conf \
    $(LOCAL_PATH)/configs/WCNSS_qcom_cfg.ini:system/vendor/etc/wifi/WCNSS_qcom_cfg.ini \
    $(LOCAL_PATH)/configs/WCNSS_qcom_cfg.ini:system/vendor/firmware/wlan/prima/WCNSS_qcom_cfg.ini


