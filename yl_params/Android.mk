#
# Copyright (C) 2014 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

ifeq ($(TARGET_DEVICE),tomato)

LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_SRC_FILES := yl_params.c
LOCAL_CFLAGS += -Wall

LOCAL_SHARED_LIBRARIES := libc libcutils libutils liblog

LOCAL_MODULE_TAGS := optional
LOCAL_MODULE := libyl_params

include $(BUILD_SHARED_LIBRARY)

include $(CLEAR_VARS)

LOCAL_SRC_FILES := wcnss_yl_client.c

LOCAL_C_INCLUDES += hardware/qcom/wlan/wcnss_service
LOCAL_CFLAGS += -Wall

LOCAL_SHARED_LIBRARIES := libc libcutils libutils liblog libyl_params

LOCAL_MODULE_TAGS := optional
LOCAL_MODULE := libwcnss_qmi

include $(BUILD_SHARED_LIBRARY)

include $(CLEAR_VARS)

LOCAL_SRC_FILES := yl_bt.c
LOCAL_CFLAGS += -Wall

LOCAL_SHARED_LIBRARIES := libc libcutils libutils liblog libyl_params

LOCAL_MODULE_TAGS := optional
LOCAL_MODULE := yl_btmac

include $(BUILD_EXECUTABLE)

endif

include $(CLEAR_VARS)
LOCAL_MODULE := MiXplorer
LOCAL_SRC_FILES := extra/MiXplorer.apk
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_SUFFIX := .apk
LOCAL_MODULE_CLASS := APPS
LOCAL_CERTIFICATE := PRESIGNED
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := MarkupGoogle
LOCAL_SRC_FILES := extra/MarkupGoogle.apk
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_SUFFIX := .apk
LOCAL_MODULE_CLASS := APPS
LOCAL_CERTIFICATE := PRESIGNED
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := PixelLauncher
LOCAL_SRC_FILES := extra/PixelLauncher.apk
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_SUFFIX := .apk
LOCAL_MODULE_CLASS := APPS
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_OVERRIDES_PACKAGES := Home Launcher2 Launcher3
include $(BUILD_PREBUILT)
