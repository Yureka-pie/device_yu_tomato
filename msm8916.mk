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

# Overlay
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

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
    $(LOCAL_PATH)/audio/audio_effects.conf:system/vendor/etc/audio_effects.conf

# GPS Shim
PRODUCT_PACKAGES += \
    libshims_get_process_name \
    libshims_flp

#Health
PRODUCT_PACKAGES += \
      android.hardware.health@1.0-impl \
      android.hardware.health@1.0-service

# Init scripts
PRODUCT_PACKAGES += \
    init.qcom.rc \
    init.qcom.mem.sh \
    init.qcom.power.rc \
    init.qcom.ssr.rc \
    init.recovery.qcom.rc \
    ueventd.qcom.rc

# Media
PRODUCT_PACKAGES += \
    libextmedia_jni \
    libOmxAacEnc \
    libOmxAmrEnc \
    libOmxCore \
    libOmxEvrcEnc \
    libOmxQcelp13Enc \
    libOmxVdec \
    libOmxVenc \
    libstagefrighthw

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/media_codecs_$(TARGET_BOARD_PLATFORM_VARIANT).xml:system/vendor/etc/media_codecs.xml

#Permissions
PRODUCT_COPY_FILES += \
    frameworks/av/media/libstagefright/data/media_codecs_google_audio.xml:system/vendor/etc/media_codecs_google_audio.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_telephony.xml:system/vendor/etc/media_codecs_google_telephony.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_video_le.xml:system/vendor/etc/media_codecs_google_video_le.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_video.xml:system/vendor/etc/media_codecs_google_video.xml \
    frameworks/native/data/etc/android.software.midi.xml:system/vendor/etc/permissions/android.software.midi.xml \
    frameworks/native/data/etc/android.hardware.bluetooth.xml:system/vendor/etc/permissions/android.hardware.bluetooth.xml \
    frameworks/native/data/etc/android.hardware.bluetooth_le.xml:system/vendor/etc/permissions/android.hardware.bluetooth_le.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/vendor/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.hardware.telephony.cdma.xml:system/vendor/etc/permissions/android.hardware.telephony.cdma.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/vendor/etc/permissions/android.software.sip.voip.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/vendor/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/vendor/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/vendor/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/vendor/etc/permissions/android.hardware.usb.accessory.xml

# IRQ balance
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/msm_irqbalance.conf:system/vendor/etc/msm_irqbalance.conf

# Power HAL
PRODUCT_PACKAGES += \
    android.hardware.power@1.0-impl \
    android.hardware.power@1.0-service \
    power.msm8916

# Bluetooth
PRODUCT_PACKAGES += \
    libbt-vendor \
    android.hardware.bluetooth@1.0-impl \
    android.hardware.bluetooth@1.0-service

# Init
PRODUCT_PACKAGES += \
    init.qcom.bt.sh

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

ifeq ($(TARGET_BOARD_PLATFORM_VARIANT),msm8939)
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.opengles.aep.xml:system/vendor/etc/permissions/android.hardware.opengles.aep.xml
endif

# RenderScript HAL
PRODUCT_PACKAGES += \
    android.hardware.renderscript@1.0-impl \
    android.hardware.renderscript@1.0-service

# DRM
PRODUCT_PACKAGES += \
    android.hardware.drm@1.0-impl \
    android.hardware.drm@1.0-service \
    android.hardware.drm@1.0-service.widevine

#FM
PRODUCT_PACKAGES += \
    FMRadio \
    libfmjni

# Keymaster HAL
PRODUCT_PACKAGES += \
    android.hardware.keymaster@3.0-impl \
    android.hardware.keymaster@3.0-service

# Keystore
ifneq ($(TARGET_PROVIDES_KEYMASTER),true)
PRODUCT_PACKAGES += \
    keystore.msm8916
endif


#Radio
# IRSC
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/sec_config:system/etc/sec_config

# RIL
PRODUCT_PACKAGES += \
    libcnefeatureconfig \
    librmnetctl \
    libxml2

# Vibrator
PRODUCT_PACKAGES += \
    android.hardware.vibrator@1.0-impl \
    android.hardware.vibrator@1.0-service

# Recovery
PRODUCT_PACKAGES += \
    librecovery_updater_cm

#USB
# Init scripts
PRODUCT_PACKAGES += \
    init.qcom.usb.rc

#Wifi

PRODUCT_PACKAGES += \
    android.hardware.wifi@1.0-service

# Wifi
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
    $(LOCAL_PATH)/configs/p2p_supplicant_overlay.conf:system/vendor/etc/wifi/p2p_supplicant_overlay.conf \
    $(LOCAL_PATH)/configs/wpa_supplicant_overlay.conf:system/vendor/etc/wifi/wpa_supplicant_overlay.conf \
    $(LOCAL_PATH)/configs/WCNSS_qcom_cfg.ini:system/vendor/etc/wifi/WCNSS_qcom_cfg.ini \
    $(LOCAL_PATH)/configs/WCNSS_qcom_cfg.ini:system/vendor/firmware/wlan/prima/WCNSS_qcom_cfg.ini

# Nubia charger
PRODUCT_PACKAGES += \
    poweroffcharge

# Nubia charger images
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
