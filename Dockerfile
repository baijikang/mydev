FROM ubuntu

COPY .vimrc /root/
COPY .tmux.conf /root/
COPY .vim /root/.vim
COPY fzf-preview /root/fzf-preview
COPY .ackrc /root/
COPY config.fish /root/
COPY .npmrc /root/
COPY install.sh  /root/install.sh
COPY clean.sh  /root/clean.sh
COPY source.list /etc/apt/sources.list

