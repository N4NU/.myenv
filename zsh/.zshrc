# .zshrc

# Key Bindings ###############
bindkey -e
bindkey '^[\e[C' forward-word
bindkey '^[\e[D' backward-word

# Prompt #####################

# PROMPT='%B%(?, %F{green}, %F{red})$ %f%b'
# PROMPT='%F{red}%n@%m%f:%F{blue}%~%f%B%(?,%F{green},%F{red})$ %f%b'
# RPROMPT='%K{red} %k'
# RPROMPT='|'
# RPROMPT='[%F{magenta}%~%f]'
PROMPT='[%n@%m]%# '
RPROMPT='[%d]'

# History ####################

HISTFILE=~/.zsh.history
HISTSIZE=1000000
SAVEHIST=1000000

setopt extended_history
setopt hist_ignore_all_dups


autoload history-search-end
zle -N history-beginning-search-backward-end history-search-end
zle -N history-beginning-search-forward-end history-search-end
bindkey '^P' history-beginning-search-backward-end
bindkey '^N' history-beginning-search-forward-end
bindkey '^R' history-incremental-search-backward

# Optional ###################

# avoid beep sound
setopt no_beep
# comment [#]
setopt interactive_comments
# extended glob
setopt extended_glob

autoload colors
colors
autoload compinit
compinit

# Shortcuts ##################

case $OSTYPE in
  # OSX
  darwin*) source ~/.zshrc.osx;;
  # GNU/Linux
  linux*) source ~/.zshrc.linux;;
esac


cd () {
  builtin cd "$@" && ls
}
alias sl=ls
# alias cls=clear
alias b='cd ..'
alias l='ls'
alias la='ls -a'
alias t=touch
alias emacs=vim
alias gdb='gdb -q'


# Includes ###################

source ~/.zshrc.profile
