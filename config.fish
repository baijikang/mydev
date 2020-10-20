function 1source
  source ~/.config/fish/config.fish
end

function pp
  git add -A
  git commit -m $argv
  git push
end

function p
    cd ~/project
end

function ns
    npm start
end

function 1cli
    npm run cli
end

function ee
    exit
end

function gl
    git pull
end

function gst
    git status
end

function glg
  git log --stat $argv[1]
end

function gd
  git  diff $argv
end

function lla
  ll -a
end

function gbr
  git br -a
end

set -x PATH {$PATH} ~/opt/node/bin/

fish_vi_key_bindings


# export LC_ALL=en_US.UTF-8
# export LANG=en_US.UTF-8
