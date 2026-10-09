#!/bin/bash
# diy-part1.sh
# 设置默认语言为中文

# 创建 files 目录结构（利用固件覆盖机制）
mkdir -p files/etc/uci-defaults

# 写入开机执行脚本，默认设置 LuCI 为中文
cat << 'EOF' > files/etc/uci-defaults/99-set-default-zh_cn
uci set luci.main.lang='zh_cn'
uci commit luci
exit 0
EOF
