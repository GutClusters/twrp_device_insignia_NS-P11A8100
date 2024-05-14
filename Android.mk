ifneq ($(filter NS-P11A8100,$(TARGET_DEVICE)),)

LOCAL_PATH := device/insignia/NS-P11A8100

include $(call all-makefiles-under,$(LOCAL_PATH))

endif