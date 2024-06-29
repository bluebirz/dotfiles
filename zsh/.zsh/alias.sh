alias lsofp="sudo lsof -iTCP -sTCP:LISTEN -n -P"
alias upd="
echo 'Updating Homebrew...' && brew update && brew upgrade;
echo 'Updating GCloud...' && echo 'Y' | gcloud components update;
#echo 'Updating Rust...' && rustup update
"
alias nv="nvim ." # nvim
alias zl="zellij"
