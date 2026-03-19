# Color pick
# for code in {000..255}; do print -P -- "$code: %F{$code}Color%f"; done

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

# VCS info
autoload -Uz vcs_info
precmd() { vcs_info }
zstyle ':vcs_info:git:*' check-for-changes true
zstyle ':vcs_info:git:*' unstagedstr '?U'
zstyle ':vcs_info:git:*' stagedstr '+S'
zstyle ':vcs_info:git:*' formats '%F{087}[⎇ %b]%f%F{red}%u%f%F{cyan}%c%f '

# Prompt
setopt PROMPT_SUBST
PROMPT='%F{111}%n%f%F{110}@%m%f %F{229}%~%f ${vcs_info_msg_0_}%F{229}%#%f '
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
