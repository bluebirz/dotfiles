alias lsofp="sudo lsof -iTCP -sTCP:LISTEN -n -P"
upd() (
  HIGHLIGHT="\033[1;44m"
  RESET="\033[0m"
  PREFIX="\$ Updating "
  SUFFIX="... "
  echo ${HIGHLIGHT}${PREFIX}'Homebrew'${SUFFIX}${RESET} && brew update && brew upgrade
  echo ${HIGHLIGHT}${PREFIX}'GCloud'${SUFFIX}${RESET} && echo 'Y' | gcloud components update
  echo ${HIGHLIGHT}${PREFIX}'Devbox'${SUFFIX}${RESET} && devbox version update
)

alias nv="nvim ." # nvim
alias zl="zellij"
# alias prep_py="python3 -m venv venv && echo \"source venv/bin/activate\nlayout python\" > .envrc && direnv allow"
alias dus="du -h -d 1 | sort -h"
alias lsh="ls -lah | sort -h"
