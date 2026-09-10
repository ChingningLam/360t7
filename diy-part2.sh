#!/bin/bash

# Modify default IP
# 登录地址 192.168.3.1
sed -i 's/192.168.1.1/192.168.3.1/g' ./package/base-files/files/bin/config_generate
# 设备名
sed -i 's/hostname="ImmortalWrt"/hostname="360T7"/g' ./package/base-files/files/bin/config_generate
# 最底部
sed -i 's/DISTRIB_DESCRIPTION=.*/DISTRIB_DESCRIPTION="ImmortalWrt By ChingningLam $(date +%Y%m%d)"/g' ./package/base-files/files/etc/openwrt_release
# 获取ua3f
git clone https://github.com/SunBK201/UA3F.git package/UA3F
