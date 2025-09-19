include $(TOPDIR)/rules.mk

PKG_NAME:=my-script
PKG_VERSION:=1.0
PKG_RELEASE:=1

include $(INCLUDE_DIR)/package.mk

define Package/my-script
  SECTION:=utils
  CATEGORY:=Utilities
  TITLE:=My Script
endef

define Package/my-script/description
  This is a custom script that finds the largest partition in /mnt and runs start.sh.
endef

define Build/Prepare
endef

define Build/Configure
endef

define Build/Compile
endef

define Package/my-script/install
	$(INSTALL_DIR) $(1)/etc/init.d
	$(INSTALL_BIN) ./files/init $(1)/etc/init.d/my-script
	$(INSTALL_DIR) $(1)/usr/bin
	$(INSTALL_BIN) ./files/find_largest_partition_and_run.sh $(1)/usr/bin/find_largest_partition_and_run.sh
endef

$(eval $(call BuildPackage,my-script))
