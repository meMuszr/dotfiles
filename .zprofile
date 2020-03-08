export CHANGE_MINIKUBE_NONE_USER=true
export _JAVA_AWT_WM_NONREPARENTING=1
export MOZ_ENABLE_WAYLAND=1
export EDITOR=nvim
export LESS='-RSFX'
export PAGER='less'
export VISUAL=nvim
export BEMENU_BACKEND=wayland
export SDL_VIDEODRIVER=wayland
export MANPAGER="sh -c 'col -bx | bat -l man -p'"
export FZF_TMUX=1
export FZF_CTRL_T_OPTS="--select-1 --exit-0"
export FZF_CTRL_R_OPTS="--preview 'echo {}' --preview-window down:3:hidden:wrap --bind '?:toggle-preview'"
export PATH="$PATH:$HOME/.dotnet/tools:$HOME/.node_modules/bin:$PATH"
export npm_config_prefix=~/.node_modules

export GPG_TTY=$(tty)
export $(gnome-keyring-daemon --start)
if [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty1 ]]; then
  XDG_SESSION_TYPE=wayland XKB_DEFAULT_LAYOUT=us exec sway
fi
