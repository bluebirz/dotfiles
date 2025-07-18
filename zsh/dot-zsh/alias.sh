alias lsofp="sudo lsof -iTCP -sTCP:LISTEN -n -P"
upd() (
  HIGHLIGHT="\033[1;94m"
  TIMESTAMPER="\033[31m"
  RESET="\033[0m"
  PREFIX="\$ Updating "
  SUFFIX="... "

  echo ${TIMESTAMPER}'Running at '$(date "+%Y-%m-%d %H:%M:%S")${RESET}
  echo ${HIGHLIGHT}${PREFIX}'Homebrew'${SUFFIX}${RESET} && brew update && brew upgrade
  echo ${HIGHLIGHT}${PREFIX}'GCloud'${SUFFIX}${RESET} && echo 'Y' | gcloud components update
  echo ${HIGHLIGHT}${PREFIX}'Devbox'${SUFFIX}${RESET} && devbox version update
  echo ${HIGHLIGHT}${PREFIX}'TLDR'${SUFFIX}${RESET} && tldr -u
  echo ${TIMESTAMPER}'Finished at '$(date "+%Y-%m-%d %H:%M:%S")${RESET}
)

alias nv="nvim"   # nvim
alias yz="yazi ." # yazi
alias zl="zellij" # zellij
# alias prep_py="python3 -m venv venv && echo \"source venv/bin/activate\nlayout python\" > .envrc && direnv allow"
alias dus="du -h -d 1 | sort -h"
alias lsh="ls -lah | sort -h"
alias dvb="devbox"
alias tmx="tmux attach"
alias lgg="lazygit"
alias lgd="lazydocker"

alias lsz="eza -la -G --icons=always --color=always --git --no-user --total-size --time-style '+%Y-%m-%d %H:%M'"
alias pysys="python3 -c 'import sys; print(sys.prefix)'"
