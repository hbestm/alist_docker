# alist_docker
自用的alist docker部署文件

部署方法
1.git clone 本项目
例子：
3.docker build -t 镜像名字 -f Dockerfile .
例子：
docker build -t alist -f Dockerfile .


4.docker run -d --name 容器名字 镜像名字 -p主机端口:容器端口 refresh_token 默认目录
5.例子：
6. docker run -d --name alist alist -p5245:5244 82a5c243xxxxxxcdbbeb8e79e8cb95b70 root
