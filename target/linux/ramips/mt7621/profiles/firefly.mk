#
# Copyright (C) 2011 OpenWrt.org
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

define Profile/Firefly
	NAME:=Firefly Profile
	PACKAGES:=\
		-swconfig -rt2x00 \
		ated hwnat reg gpio btnd switch ethstt uci2dat mii_mgr watchdog 8021xd \
		fstools kmod-scsi-generic \
		kmod-usb-core kmod-usb3 kmod-usb-storage \
		kmod-fs-ext3 kmod-fs-vfat kmod-fs-ntfs kmod-exfat-nofuse \
		kmod-nls-base kmod-nls-utf8 kmod-nls-cp936 \
		kmod-mtk-mmc kmod-sdhci \
		mount-utils usbutils \
		kmod-nls-cp437 kmod-nls-cp850 kmod-nls-iso8859-1 kmod-nls-iso8859-15 kmod-nls-cp950 \
		kmod-mt76x2e wireless-tools \
		openssh-sftp-server \
		luci luci-mod-rpc \
		automount autorun firefly-api
endef

define Profile/Firefly/Description
	Firefly eval board.
endef
$(eval $(call Profile,Firefly))
