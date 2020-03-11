#!/bin/bash
#=================================================
# Description: DIY script
# Lisence: MIT
# Author: P3TERX
# Blog: https://p3terx.com
#=================================================
# Modify default IP
#sed -i 's/192.168.1.1/192.168.50.5/g' package/base-files/files/bin/config_generate
#!/bin/bash
git clone https://github.com/Leo-Jo-My/luci-app-vssr package/luci-app-vssr
git clone https://github.com/Leo-Jo-My/my package/my

if [ ! -d "./package/myapp" ];then
mkdir ./package/myapp
fi
cd ./package/myapp

echo "koolproxyR"
if [ ! -d "./koolproxyR" ];then
git clone https://github.com/tzxiaozhen88/koolproxyR.git
else
cd koolproxyR
git pull
cd ..
fi


echo "luci-theme-argon"
if [ ! -d "./luci-theme-argon" ];then
git clone https://github.com/jerrykuku/luci-theme-argon.git
else
cd luci-theme-argon
git pull
cd ..
fi

echo "luci-theme-atmaterial"
if [ ! -d "./luci-theme-atmaterial" ];then
git clone https://github.com/openwrt-develop/luci-theme-atmaterial.git
else
cd luci-theme-atmaterial
git pull
cd ..
fi

echo "luci-theme-argon-mc"
if [ ! -d "./luci-theme-argon-mc" ];then
svn checkout https://github.com/project-openwrt/openwrt/trunk/package/lienol/luci-theme-argon-mc
else
cd luci-theme-argon-mc
svn update
cd ..
fi


echo "luci-theme-rosy"
if [ ! -d "./luci-theme-rosy" ];then
git clone https://github.com/rosywrt/luci-theme-rosy.git
else
cd luci-theme-rosy
git pull
cd ..
fi

echo "luci-theme-darkmatter"
if [ ! -d "./luci-theme-darkmatter" ];then
git clone https://github.com/apollo-ng/luci-theme-darkmatter.git
else
cd luci-theme-darkmatter
git pull
cd ..
fi

# passwall软件及依赖
if [ ! -d "./passwall" ];then
mkdir ./passwall
fi
cd ./passwall
echo " "
echo "luci-app-passwall"
if [ ! -d "./luci-app-passwall" ];then
svn checkout https://github.com/Lienol/openwrt-package/trunk/lienol/luci-app-passwall
else
cd luci-app-passwall
svn update
cd ..
fi

echo "######################"
echo "#  passwall Depends  #"
echo "######################"
echo "tcping"
if [ ! -d "./tcping" ];then
svn checkout https://github.com/Lienol/openwrt-package/trunk/package/tcping
else
cd tcping
svn update
cd ..
fi
echo "chinadns-ng"
if [ ! -d "./chinadns-ng" ];then
svn checkout https://github.com/Lienol/openwrt-package/trunk/package/chinadns-ng
else
cd chinadns-ng
svn update
cd ..
fi
echo "dns2socks"
if [ ! -d "./dns2socks" ];then
svn checkout https://github.com/Lienol/openwrt-package/trunk/package/dns2socks
else
cd dns2socks
svn update
cd ..
fi
echo "brook"
if [ ! -d "./brook" ];then
svn checkout https://github.com/Lienol/openwrt-package/trunk/package/brook
else
cd brook
svn update
cd ..
fi

echo "v2ray-plugin"
if [ ! -d "./v2ray-plugin" ];then
svn checkout https://github.com/Lienol/openwrt-package/trunk/package/v2ray-plugin
else
cd v2ray-plugin
svn update
cd ..
fi

# 返回到myapp文件夹
cd ..
# 返回到package
cd ..


pwd




