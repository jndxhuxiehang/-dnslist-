# dnslist文件更新小脚本
我使用的是项目[cllu/hiwifi-ss](https://github.com/cllu/hiwifi-ss)的ss插件，此项目是针对该插件进行dnslist更新的一个小脚本
# 方法（复制下方代码直接运行）
```sh
curl -k -o updatelist.sh https://raw.githubusercontent.com/jndxhuxiehang/-dnslist-/master/updatelist.sh && sh updatelist.sh 
```
# 实现方法：
项目的dnslist文件位于路由器路径中的/etc/gw-redsocks/gw-shadowsocks中的"gw-shadowsocks.dnslist”
直接删除掉原dnslist文件，然后从g2w.online/下载对应的数据并保存为gw-shadlwsocks.dnslist（项目使用的是53535端口）
完成执行之后请重启ss
# 关于自动更新
因为已经下载了脚本文件，所以实际上只需要执行一个定时任务去执行下载过的updatelist.sh脚本就可以更新，再加个定时重启路由器，建议可以将时间设定为不用路由器的时间进行更新和重启工作
关于定时任务的用法见此网站http://man.linuxde.net/crontab
# ps
本小白是在接触极路由一天之后开始鼓捣插件，也是第一次接触linux，看了差不多两天的各种教程，勉强懂了一点皮毛，不足之处还请多多指教

