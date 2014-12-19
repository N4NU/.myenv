# .zshrc

# Key Bindings ###############
bindkey -v

# Prompt #####################

PROMPT='%B%(?, %F{green}, %F{red})$ %f%b'

RPROMPT='[%F{magenta}%~%f]'

# History ####################

HISTFILE=~/.zsh.history
HISTSIZE=1000
SAVEHIST=1000

setopt extended_history
setopt hist_ignore_all_dups


autoload history-search-end
zle -N history-beginning-search-backward-end history-search-end
zle -N history-beginning-search-forward-end history-search-end
bindkey '^P' history-beginning-search-backward-end
bindkey '^N' history-beginning-search-forward-end
bindkey "^R" history-incremental-search-backward

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
alias sl=ls
alias cls=clear
alias b='cd ..'
alias la='ls -a'
alias :q=exit
alias emacs=vim


case $OSTYPE in
  # OSX
  darwin*) source ~/.zshrc.osx;;
  # GNU/Linux
  linux*) source ~/.zshrc.linux;;
esac

# Includes ###################

source ~/.zshrc.profile
source ~/.myenv/.profile

