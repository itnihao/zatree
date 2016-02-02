#!/bin/bash
#author: itnihao
#进入你的zabbix2.4.7 web目录
wget https://raw.githubusercontent.com/itnihao/zatree/master/zabbix-2.4.7/zatree-2.4.7.patch
wget https://raw.githubusercontent.com/itnihao/zatree/master/zabbix-2.4.7/zatree.tar.gz
tar xvf zatree.tar.gz
patch  -Np0 <zatree-2.4.7.patch
