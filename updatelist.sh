#!/bin/sh
#
sleep 2
cd /etc/gw-redsocks/gw-shadowsocks
echo "--------------------------------成功打开dnslist文件所在目录-----------------------------------------"
echo " "
echo " "
rm gw-shadowsocks.dnslist
echo "---------------------------------成功删除老版本dnslist文件------------------------------------------"
echo " "
echo " "
curl -s -k -o gw-shadowsocks.dnslist https://g2w.online/dnsq/127.0.0.1:53535
echo "---------------------------------成功下载新版本dnslist文件------------------------------------------"
echo " "
echo " "
echo "                            **********最后一步正在进行******************"
echo " "
echo " "

echo "                            **********正在重启ss服务******************"
/etc/init.d/gw-shadowsocks restart
sleep 5
echo " "
echo " "
echo "                            **********ss服务重启结束******************"
echo "                            **********恭喜完成gfwlist更新*************"
