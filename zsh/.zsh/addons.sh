# enable zoxide
# if brew ls --versions zoxide >/dev/null; then
eval "$(zoxide init --cmd cd zsh)"
# fi

# Enable atuin
# if brew ls --versions atuin >/dev/null; then
eval "$(atuin init zsh)"
# fi

# direnv
# if brew ls --versions direnv >/dev/null; then
eval "$(direnv hook zsh)"
# fi

# devbox
# if brew ls --versions devbox >/dev/null; then
eval "$(devbox global shellenv --init-hook --recompute)"
# fi

# zsh-autosuggestions
# if brew ls --versions zsh-autosuggestions >/dev/null; then
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh
# fi

# zsh-syntax-highlighting
# if brew ls --versions zsh-syntax-highlighting >/dev/null; then
source $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
# fi
#

# fzf
source <(fzf --zsh)
