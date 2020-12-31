ifneq ($(filter BoldN1,$(TARGET_DEVICE)),)

LOCAL_PATH := device/BLU/BoldN1

include $(call all-makefiles-under,$(LOCAL_PATH))

endif
