THEOS_DEVICE_IP = 192.168.1.120

TARGET = :clang
ARCHS = armv7 arm64

include theos/makefiles/common.mk

BUNDLE_NAME = EasySpring
EasySpring_FILES = EasySpring.m
EasySpring_FRAMEWORKS = Foundation UIKit
EasySpring_LIBRARIES = prowidgets
EasySpring_INSTALL_PATH = /Library/ProWidgets/Widgets/
EasySpring_BUNDLE_EXTENSION = widget

include $(THEOS_MAKE_PATH)/bundle.mk

after-install::
	install.exec "killall -9 backboardd"