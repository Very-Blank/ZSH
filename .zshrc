# Install zsh-syntax-highlighting
export LANG=en_US.UTF-8
# export LC_ALL=en_US.UTF-8

setopt autocd extendedglob nomatch
setopt HIST_SAVE_NO_DUPS
setopt HIST_EXPIRE_DUPS_FIRST
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_IGNORE_SPACE
setopt HIST_FIND_NO_DUPS
unsetopt beep notify

bindkey -v
bindkey -M vicmd ':' vi-cmd-mode
bindkey "^H" backward-delete-char
bindkey "^?" backward-delete-char

zstyle :compinstall filename '/home/ample/.zshrc'

fpath+=($HOME/.zsh/pure)
autoload -U promptinit; promptinit

#completion
autoload -U compinit; compinit
source $HOME/.zsh/completion.zsh

# optionally define some options
PURE_CMD_MAX_EXEC_TIME=10

# change the path color
zstyle :prompt:pure:path color cyan
# zstyle :prompt:pure:$color_name

# change the color for both `prompt:success` and `prompt:error`
zstyle ':prompt:pure:prompt:*' color cyan

# turn on git stash status
zstyle :prompt:pure:git:stash show yes

prompt pure

#alias
source $HOME/.zsh/aliases.zsh

#highlighting
source /home/ample/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
