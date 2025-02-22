#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#

# Modify default IP
#sed -i 's/192.168.1.1/192.168.50.5/g' package/base-files/files/bin/config_generate
sed -i 's/192.168.1.1/192.168.8.222/g' package/base-files/files/bin/config_generate
sed -i 's/OpenWrt/HP GEN8/g' package/base-files/files/bin/config_generate
# git clone https://github.com/frainzy1477/luci-app-clash.git package/luci-app-clash
git clone -b master https://github.com/vernesong/OpenClash.git package/luci-app-openclash
# git clone -b master https://github.com/tindy2013/openwrt-subconverter.git package/openwrt-subconverter
git clone -b master https://github.com/jerrykuku/lua-maxminddb.git package/lua-maxminddb
git clone -b master https://github.com/jerrykuku/luci-app-vssr.git  package/luci-app-vssr
