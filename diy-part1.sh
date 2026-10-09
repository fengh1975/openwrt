# 强制设置默认语言为中文
mkdir -p files/etc/uci-defaults
cat << EOF > files/etc/uci-defaults/99-default-zh_cn
uci set luci.main.lang='zh_cn'
uci commit luci
exit 0
EOF
