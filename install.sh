echo '\n\n\napt 安裝基礎包'                                                                             && \
sleep 2                                                                                                 && \
apt update                                                                                              && \
apt upgrade  -y                                                                                         && \
apt install tree curl wget vim git net-tools iproute2 iputils-ping  python python3 fish htop axel screen ack  fd-find bat tmux -y  && \
apt install  -o Dpkg::Options::="--force-overwrite" ripgrep  -y  && \
echo '\n\n\napt 配置fish'                                                                               && \
sleep 2                                                                                                 && \
mkdir -p  ~/.config/fish/                                                                               && \
mv config.fish ~/.config/fish/config.fish                                                               && \
echo '              fish 已經配置好，以後可以用 /usr/bin/fish 作爲 docker 啓動命令 '                    && \
echo '\n\n\n  * 下載 ndoejs'                                                                            && \
sleep 2                                                                                                 && \
wget -c  'https://npm.taobao.org/mirrors/node/v16.7.0/node-v16.7.0-linux-x64.tar.gz'                  && \
mkdir -p ~/opt/                                                                                         && \
tar -xf node-v16.7.0-linux-x64.tar.gz                                                                  && \
rm node-v16.7.0-linux-x64.tar.gz                                                                       && \
mv node-v16.7.0-linux-x64 ~/opt/node                                                                   && \
ln -s ~/opt/node/bin/node /usr/local/bin/node                                                           && \
ln -s /usr/bin/batcat /usr/bin/bat
export PATH=/root/opt/node/bin:$PATH                                                                    && \
echo '\n\n\n  * npm 全局安裝常用工具'                                                                   && \
sleep 2                                                                                                 && \
npm config set strict-ssl false                                                                         && \ 
npm install -g yarn                                                                                     && \ 
yarn global add pm2 live-server typescript nodemon n ts-node @vue/cli                                   && \


echo '\n\n\n  * 下面請手工安裝 vim coc 插件'                                                                                                && \
echo '         先切换到 fish 环境下运行'                                                                                                    && \
echo '        - 打開 vim '                                                                                                                  && \
echo '        - 執行 :PlugInstall'                                                                                                          && \
echo '        - 執行 :CocUpdate'                                                                                                            && \
echo '        - 執行 :CocInstall coc-css coc-html coc-java coc-json coc-python coc-tsserver coc-vetur'                                      && \
echo '\n\n\n  * 清理'                                                                                                                       && \
echo '        - 安装好 vim 插件后， 执行 clean.sh'
