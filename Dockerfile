FROM nginx:1.27.0-alpine-perl

# 配置文件
COPY ./nginx.conf /etc/nginx/nginx.conf
COPY ./env.sh /opt

WORKDIR /opt
RUN chmod a+x ./env.sh

CMD ["sh", "env.sh"]
