#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

export PATH="${PATH}:$HOME/.local/bin"
export TERMINAL="kitty"
export RANGER_LOAD_DEFAULT_RC=false
export EDITOR="nvim"

export PATH="$HOME/.cargo/bin:$PATH"
