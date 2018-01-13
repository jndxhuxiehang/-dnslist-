#!/bin/sh
cd /etc/gw-redsocks/gw-shadowsocks
rm gw-shadowsocks.dnslist
if curl -s -k -o gw-shadowsocks.dnslist https://g2w.online/dnsq/127.0.0.1:53535
then
  echo "成功下载新版本dnslist文件"
fi
chmod 755 gw-shadowsocks.dnslist
echo "正在重启ss服务"
/etc/init.d/gw-shadowsocks restart
echo "恭喜完成gfwlist更新"
