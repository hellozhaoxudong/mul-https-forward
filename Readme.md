
docker build -t mul-https-forward:beta .


```shell
docker load -i mul-https-forward_beta.tar


# 使用主机网络
docker run -d --restart=always --privileged=true \
-v /etc/mhf/rules:/etc/nginx/conf.d \
-v /etc/mhf/ssl:/etc/https \
--net=host \
--name https mul-https-forward:beta


# 使用端口映射
docker run -d --restart=always --privileged=true \
-v /etc/mhf/rules:/etc/nginx/conf.d \
-v /etc/mhf/ssl:/etc/https \
-p 188:188 -p 18080:18080 -p 19090:19090 \
--name https mul-https-forward:beta
```