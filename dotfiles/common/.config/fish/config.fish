# Remove fish shell greeting
set fish_greeting

# Set colours for less pager
set -xU LESS_TERMCAP_md (printf "\e[01;31m")
set -xU LESS_TERMCAP_me (printf "\e[0m")
set -xU LESS_TERMCAP_se (printf "\e[0m")
set -xU LESS_TERMCAP_so (printf "\e[01;44;33m")
set -xU LESS_TERMCAP_ue (printf "\e[0m")
set -xU LESS_TERMCAP_us (printf "\e[01;32m")

# Necessary for IntelliJ IDEA to start up nicely
set -xU _JaVA_AWT_WM_NONREPARENTING 1

# Sets up link to mDrive, must have approved ssh key and mDrive folder in home
alias mDrive="sshfs -o IdentityFile=~/.ssh/id_rsa dsdgom@unix4.essex.ac.uk:/ufs/servh02/users/dsdgom ~/mDrive/"
