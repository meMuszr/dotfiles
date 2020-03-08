source $HOME/.aliases
source /usr/share/zsh/share/antigen.zsh
antigen use oh-my-zsh
antigen bundle zsh-users/zsh-syntax-highlighting
antigen theme refined
antigen bundle gradle/gradle-completion
antigen apply
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt autocd extendedglob notify
bindkey -v
autoload -Uz compinit 
source /usr/share/fzf/key-bindings.zsh
source /usr/share/fzf/completion.zsh

