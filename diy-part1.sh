#!/bin/bash
# diy-part1.sh
# 设置默认语言为中文

mkdir -p files/etc/uci-defaults

cat << 'EOF' > files/etc/uci-defaults/99-set-default-zh_cn
#!/bin/sh
uci set luci.main.lang='zh_cn'
uci commit luci
exit 0
EOF

# 关键一步：赋予开机脚本可执行权限，否则开机不会执行！
chmod +x files/etc/uci-defaults/99-set-default-zh_cn
