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
cd ..
fi

cd ..
./scripts/feeds update -a
./scripts/feeds install -a


