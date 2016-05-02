## dnscrypt-proxy for openwrt

灵感源自[dnscrypt-proxy-openwrt项目](https://github.com/damianorenfer/dnscrypt-proxy-openwrt)，个人作些许修改。

当前版本：[1.6.1](https://download.dnscrypt.org/dnscrypt-proxy)

依赖软件包：[libsodium 1.0.2](https://github.com/jedisct1/libsodium)

编译步骤：

	cd ~/openwrt
	git clone https://github.com/lixingcong/dnscrypt-proxy-openwrt

先patch

	patch package/feeds/packages/dnscrypt-proxy/Makefile < dnscrypt-proxy-openwrt/002-dnscrypt.patch
	patch package/feeds/packages/libsodium/Makefile < dnscrypt-proxy-openwrt/001-libsodium.patch
	
配置并编译

	make menuconfig
	# 选择Network->IP Addresses and Names->dnscrypt-proxy
	make package/dnscrypt-proxy/compile V=99


[dnscrypt-proxy官方网站](https://dnscrypt.org/)