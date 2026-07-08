alias lsofp="sudo lsof -iTCP -sTCP:LISTEN -n -P"
_custom_highlight() (
  HIGHLIGHT="\033[1;40m"
  HIGHLIGHT_FMT="%-$(tput cols)s"
  RESET="\033[0m"
  PREFIX=" \$ Updating "
  SUFFIX="... "

  echo ${HIGHLIGHT} && printf "${HIGHLIGHT_FMT}" "${PREFIX}${1}${SUFFIX}" && echo ${RESET}
)
upd() (
  TIMESTAMPER="\033[31m"
  RESET="\033[0m"

  echo ${TIMESTAMPER}'Running at '$(date '+%a %F %X %Z')${RESET}
  _custom_highlight "Homebrew" && brew update && brew upgrade --force --no-ask --quiet
  _custom_highlight "GCloud" && echo 'Y' | gcloud components update
  _custom_highlight "Devbox" && devbox version update
  _custom_highlight "Rust" && rustup update
  _custom_highlight "Mole" && mo update --force
  _custom_highlight "TLDR" && tldr -u
  echo ${TIMESTAMPER}'Finished at '$(date '+%a %F %X %Z')${RESET}
)

alias nv="nvim"      # nvim
alias yz="yazi ."    # yazi
alias tf="terraform" # terraform
alias zl="zellij"    # zellij
# alias prep_py="python3 -m venv venv && echo \"source venv/bin/activate\nlayout python\" > .envrc && direnv allow"
alias dus="du -h -d 1 | sort -h"
alias lsh="ls -lah | sort -h"
alias dvb="devbox"
alias tmx="if [[ ! -z $(which tmux) ]]; then tmux attach || tmux new; else echo 'tmux is not installed'; fi"
alias lgg="lazygit"
alias lgd="lazydocker"

alias lsz="eza -la -G --icons=always --color=always --git --no-user --total-size --time-style '+%Y-%m-%d %H:%M'"
alias pysys="python3 -c 'import sys; print(sys.prefix)'"
