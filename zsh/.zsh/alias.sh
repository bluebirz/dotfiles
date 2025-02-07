alias lsofp="sudo lsof -iTCP -sTCP:LISTEN -n -P"
upd() (
  HIGHLIGHT="\033[1;44m"
  TIMESTAMPER="\033[31m"
  RESET="\033[0m"
  PREFIX="\$ Updating "
  SUFFIX="... "

  echo ${TIMESTAMPER}'Running at '$(date -u "+%Y-%m-%d %H:%M:%S")${RESET}
  echo ${HIGHLIGHT}${PREFIX}'Homebrew'${SUFFIX}${RESET} && brew update && brew upgrade
  echo ${HIGHLIGHT}${PREFIX}'GCloud'${SUFFIX}${RESET} && echo 'Y' | gcloud components update
  echo ${HIGHLIGHT}${PREFIX}'Devbox'${SUFFIX}${RESET} && devbox version update
  echo ${TIMESTAMPER}'Finished at '$(date -u "+%Y-%m-%d %H:%M:%S")${RESET}
)

alias nv="nvim ." # nvim
alias yz="yazi ." # yazi
alias zl="zellij"
alias lg="lazygit"
# alias prep_py="python3 -m venv venv && echo \"source venv/bin/activate\nlayout python\" > .envrc && direnv allow"
alias dus="du -h -d 1 | sort -h"
alias lsh="ls -lah | sort -h"
alias dvb="devbox"
alias tmx="tmux attach"
