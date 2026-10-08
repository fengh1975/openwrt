#!/bin/bash
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#
# Copyright (c) 2019-2024 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# 修改默认LAN IP为192.168.8.1
sed -i 's/192.168.1.1/192.168.8.1/g' package/base-files/files/bin/config_generate
# 设置LuCI网页默认简体中文 24.10 snapshot正确路径
sed -i 's/option lang auto/option lang zh_cn/g' feeds/luci/modules/luci-base/ucitemplate/config/luci
