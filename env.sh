#!/bin/bash

set -x

# 删除默认的配置文件
rm -f /etc/nginx/conf.d/default.conf

#echo "传入参数：$RULES"
#echo "$IFS" | od -b
#
## 拆分RULES
#IFS="," read -r -a rules <<< "123-213,234-231"
#
## 遍历转发规则
#for rule in "${rules[@]}"; do
#  IFS='-' read -r -a ports <<< "$rule"
#
#  # HTTPS端口及HTTP端口
#  HTTPS_PORT="${ports[0]}"
#  HTTP_PORT="${ports[1]}"
#
#  # 生成配置文件路径
#  CONF_FILE="/etc/nginx/conf.d/${HTTPS_PORT}.conf"
#
#  # 读取模板文件并进行变量替换
#  sed -e "s/#{HTTPS_PORT}/${HTTPS_PORT}/g" \
#      -e "s/#{HTTPS_IP}/${HTTPS_IP}/g" \
#      -e "s/#{HTTP_PORT}/${HTTP_PORT}/g" \
#      -e "s/#{HTTP_IP}/${HTTP_IP}/g" \
#      /etc/conf-temp.conf > "$CONF_FILE"
#done

echo "前置https启动"
nginx -g 'daemon off;'
