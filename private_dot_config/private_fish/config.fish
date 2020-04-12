# Remove fish shell greeting
set fish_greeting

# Set colours for less pager
set -xU LESS_TERMCAP_md (printf "\e[01;31m")
set -xU LESS_TERMCAP_me (printf "\e[0m")
set -xU LESS_TERMCAP_se (printf "\e[0m")
set -xU LESS_TERMCAP_so (printf "\e[01;44;33m")
set -xU LESS_TERMCAP_ue (printf "\e[0m")
set -xU LESS_TERMCAP_us (printf "\e[01;32m")

set -xU VISUAL "nvim"
set -xU EDITOR "nvim"

set -xU SXHKD_SHELL '/usr/bin/sh'


# Necessary for IntelliJ IDEA to start up nicely
set -xU _JAVA_AWT_WM_NONREPARENTING 1

set -xU VK_ICD_FILENAMES /usr/share/vulkan/icd.d/nvidia_icd.json

# Opt out of .NET CLI telemetry
set -xU DOTNET_CLI_TELEMETRY_OPTOUT 1

# Set up env variable to allow configuring qt5 with qt5ct
set -xU QT_QPA_PLATFORMTHEME qt5ct

# Sets up link to mDrive, must have approved ssh key and mDrive folder in home
alias mDrive="sshfs -o IdentityFile=~/.ssh/id_rsa dsdgom@unix4.essex.ac.uk:/ufs/servh02/users/dsdgom ~/mDrive/"
alias vim="nvim"
alias gpuname="glxinfo | grep \"OpenGL renderer\""
alias switchgpu="optimus-manager --switch auto --no-confirm"

function reset_time --description 'Update system clock, then sets hwclock to system clock. Useful for when Windows breaks time with it being localtime'
	sudo ntpd -qg
	sudo hwclock --systohc
end

function youtube-song
	youtube-dl $argv[1] -f 140 
	# This should be in config
	# --metadata-from-title "%(artist)s - %(title)s"
end

function copy_image
	xclip -selection clipboard -t image/png -i $argv[1]
end

# Set virtual terminal colours?
if test "$TERM" = "linux"
    set _SEDCMD 's/.*\*color\([0-9]\{1,\}\).*\([0-9a-fA-F]\{6\}\).*/\1 \2/p'
    for i in (sed -n "$_SEDCMD" $HOME/.Xresources | awk '$1 < 16 {printf "\\\\e]P%X%s\n", $1, $2}')
        echo -en "$i"
    end
    clear
end
