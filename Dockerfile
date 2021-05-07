FROM debian:latest
#更新，安装wget
RUN apt-get update && apt-get install wget -y

#配置架构变量(386、amd64、arm、arm64)
ARG CPU=arm64
#后端版本号
ARG VERSION=1.0.4
#前端版本号
ARG QVERSION=1.0.4


#下载项目后端文件
RUN wget https://github.com/Xhofe/alist/releases/download/v${VERSION}/alist_v${VERSION}_linux_${CPU}.tar.gz
RUN tar -zvxf alist_v${VERSION}_linux_${CPU}.tar.gz
RUN cp linux_${CPU}/alist alist

#下载前端并解压文件
RUN wget https://github.com/Xhofe/alist-web/releases/download/v${QVERSION}/refs.tags.v${QVERSION}.tar.gz
RUN tar -zvxf refs.tags.v${QVERSION}.tar.gz

#复制配置文件
COPY conf_tmp.yml conf.yml
COPY entrypoint.sh entrypoint.sh
#修改权限
RUN chmod +x entrypoint.sh && chmod +x alist && chmod +x conf.yml 

#监听端口
EXPOSE 5244 

ENTRYPOINT ["./entrypoint.sh"] 
