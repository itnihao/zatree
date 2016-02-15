
Zatree for zabbix 2.4.7 安装
==================================

1：更新说明
```
    a.界面与Zabbix风格一致
    b.优化API，加速图片显示，性能大幅度提高
```

2.安装zatree
前提，您的Zabbix WEB版本必须为2.4.7
```
#ZBX_PATH=/usr/share/zabbix  #您的Zabbix WEB目录
#cp -r ${ZBX_PATH} /usr/share/zabbix-bak
#cd ${ZBX_PATH}
#wget --no-check-certificate https://raw.githubusercontent.com/itnihao/zatree/master/zabbix-2.4.7/install.sh
#sh install.sh
#清除浏览器cookie
```

3.访问：
http://ZBX_URL 和你的之前ZABBIX WEB访问地址相同

4.截图
![image](https://raw.githubusercontent.com/itnihao/zatree/master/zabbix-2.4.7/screenshots/ztree2.4.7.png)


定制开发zatree或zabbix
==================================

请发email到zhedou#163.com


交流
==================================

QQ讨论群：271659981

微信订阅号:yunweibang

运维帮,一个技术分享订阅号,扫描我,给我们力量

![image](https://raw.github.com/spide4k/zatree/master/zabbix-2.0.x/screenshots/yunweibang-weixin.jpg)


常见问题
==================================

1：如何排错？

可以打开php的显示错误，看看什么原因

vi /etc/php.ini

display_errors = On

重启web server,然后监控web日志

2：如果右侧显示一行2个图，说明你分辨率不够，叫老板给你换个机器，或者修改graph.php文件这行的width值

    181 <img  src="<?php echo $small_graph; ?>" width="357" height="211" style="float:left;padding-top:4px;padding-left:4px;"  /> </a>

3:是否支持搜索多个关键字？

支持，关键字用逗号分隔

4:搜索选项的差值是什么意思？

在一段时间里，最大值减去最小值得到一个结果，然后用这个结果排序，这个选项对一段时间内的突发增长查看非常有用

5: 如果你的主机名都是ip，并且向排序显示，解决方法： 编辑zabbix_ajax.php 

   43行代码注释44打开，不支持ip排序，43行代码打开44行注释，支持ip排序
          43  $new_list[ip2long($each_host->host)]=$each_host;
          44  //$new_list[] = $each_host;


小额捐款
==================================

如果你觉得zatree插件对你有帮助, 可以对作者进行小额捐款

![image](https://raw.github.com/spide4k/zatree/master/zabbix-2.0.x/screenshots/IMG_7649.JPG)![image](https://raw.github.com/spide4k/zatree/master/zabbix-2.0.x/screenshots/IMG_7650.JPG)

