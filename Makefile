ROOT_DIR = $(dir $(abspath $(firstword $(MAKEFILE_LIST))))

NDK_VERSION = 26.3.11579264

all: clean build

build:
	$(ANDROID_HOME)/ndk/$(NDK_VERSION)/ndk-build \
		NDK_PROJECT_PATH=$(ROOT_DIR)/src/jni \
		APP_BUILD_SCRIPT=$(ROOT_DIR)/src/jni/Android.mk \
		NDK_APPLICATION_MK=$(ROOT_DIR)/src/jni/Application.mk

clean:
	rm -rf libs obj

debug:
	$(ANDROID_HOME)/platform-tools/adb \
		push \
		$(ROOT_DIR)/src/jni/libs/arm64-v8a/main /data/local/tmp