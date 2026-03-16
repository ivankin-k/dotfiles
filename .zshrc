# Greet
print -n -P '%F{cyan}'
printf '%s' '
                       __        _                                     
     _________ _____  / /_____ _(_)___      _________ __________ _____ 
    / ___/ __ `/ __ \/ __/ __ `/ / __ \    / ___/ __ `/ ___/ __ `/ __ \
   / /__/ /_/ / /_/ / /_/ /_/ / / / / /   / /__/ /_/ / /__/ /_/ / /_/ /
   \___/\__,_/ .___/\__/\__,_/_/_/ /_/    \___/\__,_/\___/\__,_/\____/ 
            /_/
' \
| sed '1d'
print -n -P '%f'

# Autocomplete
autoload -Uz compinit
compinit
zstyle ':completion:*' menu select

# Prompt
PROMPT='%F{cyan}%n%f@%F{green}%m%f %F{blue}%~%f %# '
setopt COMPLETE_ALIASES
setopt AUTO_CD

# Aliases
alias l='eza -aagl --time-style "+%H:%M %d %b %Y"'
alias pacman='pacman --color auto'

# History
HISTFILE=~/.zhistory
HISTSIZE=10000 # The maximum number of events stored in the internal history list.
SAVEHIST=10000 # The maximum number of history events to save in the history file. 

# Go path
[[ -d /usr/local/go/bin ]] && export PATH=$PATH:/usr/local/go/bin:$HOME/go/bin

# Binds
bindkey '^[[H' beginning-of-line # Home
bindkey '^[[F' end-of-line       # End
bindkey '^[[3~' delete-char      # Delete
bindkey "^[[1;5C" forward-word   # Ctrl+Left
bindkey "^[[1;5D" backward-word  # Ctrl+Right
