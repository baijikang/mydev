本项目主要构建自己的 docker dev 环境

build.sh 为本机测试用的。

构建image
  docker build -t mydev .
构建完成后，为了保持小尺寸，只做了基本配置。
需要进入容器中，运行 sh /root/install.sh 来完成安装。
安装后，用自己习惯的 fish 环境


