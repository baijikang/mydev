FROM ubuntu

COPY .vimrc /root/
COPY .vim /root/.vim
COPY config.fish /root/
COPY .npmrc /root/
COPY install.sh  /root/install.sh
COPY clean.sh  /root/clean.sh
COPY source.list /etc/apt/sources.list

