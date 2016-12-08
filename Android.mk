LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE                  := mkbootfs
LOCAL_SRC_FILES               := mkbootfs.c
LOCAL_CFLAGS                  := -Wall -Wextra -std=gnu11
LOCAL_C_INCLUDES              := . $(TARGET_OUT_INTERMEDIATES)/KERNEL_OBJ/usr/include
LOCAL_STATIC_LIBRARIES        := libc
LOCAL_FORCE_STATIC_EXECUTABLE := true
LOCAL_ADDITIONAL_DEPENDENCIES := $(TARGET_OUT_INTERMEDIATES)/KERNEL_OBJ/usr
include $(BUILD_EXECUTABLE)
