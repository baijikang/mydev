function vd
  vimdiff $argv
end

function 1grep
  find . \( -path "*node_modules*" -o -path "*.git*" -o -path "*dist*" -o -path "*mockServer*"  \) -prune -o -type f -name $argv[2] -print0 | xargs -0 grep -in --color=auto  $argv[1] 
end

function 1proxy
  export https_proxy=http://125.35.57.17:9480
  export http_proxy=http://125.35.57.17:9480
  echo '125.35.57.17:9480'
  # echo '101.231.121.17:9480'
end

function gl
  git pull
end

function gd
  git diff $argv
end

function gdd
  git difftool $argv
end

function glg
  git log --stat $argv
end

function gst
  git status
end

function 1source
  source ~/.config/fish/config.fish
end




function p
  cd ~/project
end

function ns
  npm start
end

function pp
  git add -A
  git commit -m $argv
  git push
end

function ee
  exit
end


function sp
  tmux split-window
end
function vs
  tmux split-window -h
end
function t
  tmux $argv
end
function z
 tmux resize-pane -Z
end




set -x PATH /root/opt/node/bin/ $PATH
set -x no_proxy iservice.schneider-electric.cn

export FZF_DEFAULT_COMMAND="fdfind --exclude={.git,.idea,.vscode,.sass-cache,node_modules,build,dist} --type f"
# export FZF_DEFAULT_OPTS='--height 90% --layout=reverse --border --preview "echo {} | ~/fzf-preview/preview.py" --preview-window=down'
function f
  fzf --height 90% --layout=reverse --border 
end
function fp
  fzf --height 90% --layout=reverse --border --preview "echo {} | ~/fzf-preview/preview.py" --preview-window=down
end



fish_vi_key_bindings
