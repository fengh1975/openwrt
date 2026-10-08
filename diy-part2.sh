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

# uci-defaults 开机强制设置LuCI简体中文，全版本通用
cat > package/base-files/files/etc/uci-defaults/99-set-luci-lang <<EOF
#!/bin/sh
uci set luci.main.lang=zh_cn
uci commit luci
EOF
chmod +x package/base-files/files/etc/uci-defaults/99-set-luci-lang
