alias lsofp="sudo lsof -iTCP -sTCP:LISTEN -n -P"
alias upd="
echo 'Updating Homebrew...' && brew update && brew upgrade;
echo 'Updating GCloud...' && echo 'Y' | gcloud components update;
"
alias nv="nvim ." # nvim
alias zl="zellij"
alias prep_py="python3 -m venv venv && echo \"source venv/bin/activate\nlayout python\" > .envrc && direnv allow"
alias dus="du -h -d 1 | sort -h"
alias lsh="ls -lah | sort -h"
