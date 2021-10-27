#LDD

AESDDEVICE_VERSION = c21654595ff4b6114a992e386dc37b5a8907e46f
# Note: Be sure to reference the *ssh* repository URL here (not https) to work properly
# with ssh keys and the automated build/test system.
# Your site should start with git@github.com:
AESDDEVICE_SITE = git@github.com:cu-ecen-aeld/assignments-3-and-later-shni9045.git
AESDDEVICE_SITE_METHOD = git
AESDDEVICE_GIT_SUBMODULES = YES
AESDDEVICE_MODULE_SUBDIRS = aesd-char-driver/


define AESDDEVICE_INSTALL_TARGET_CMDS

	$(INSTALL) -m 0755 $(@D)/aesd-char-driver/aesdchar_load $(TARGET_DIR)/usr/bin
	$(INSTALL) -m 0755 $(@D)/aesd-char-driver/aesdchar_unload $(TARGET_DIR)/usr/bin
	$(INSTALL) -m 0755 $(@D)/assignment-autotest/test/assignment8/* $(TARGET_DIR)/usr/bin

endef

$(eval $(kernel-module))
$(eval $(generic-package))


