#!/bin/bash
# diy-part2.sh
# 修改默认 LAN IP 为 192.168.8.1

sed -i 's/192.168.1.1/192.168.8.1/g' package/base-files/files/bin/config_generate
