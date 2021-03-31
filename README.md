# alist_docker
自用的alist docker部署文件

部署方法（下面操作基于linux环境，先自行安装git clone，Debian命令为: apt-get install git clone -y）

--------------------------------------------------------------------------------------------------
1.克隆本项目到本地
命令：git clone 本项目
例子：git clone https://github.com/hbestm/alist_docker.git

--------------------------------------------------------------------------------------------------
2.可以修改conf_tmp.yml，改为你自己的内容

--------------------------------------------------------------------------------------------------
3.构建docker
命令：docker build -t 你要构建的镜像名字 -f Dockerfile .
例子：docker build -t alist -f Dockerfile .

--------------------------------------------------------------------------------------------------
4.运行容器：
命令：docker run -d --name 容器名字 镜像名字 -p主机端口:容器端口 refresh_token 默认目录
例子：docker run -d --name alist alist -p5245:5244 82a5c243xxxxxxcdbbeb8e79e8cb95b70 root

--------------------------------------------------------------------------------------------------
5.打开浏览器，输入IP：5244

--------------------------------------------------------------------------------------------------
6.点击页面底部的rebuild

--------------------------------------------------------------------------------------------------
7.大功告成
