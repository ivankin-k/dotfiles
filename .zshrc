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

# Use powerline
USE_POWERLINE="true"

# Has weird character width
# Example:
#    is not a diamond
HAS_WIDECHARS="false"

# Source manjaro-zsh-configuration
if [[ -e /usr/share/zsh/manjaro-zsh-config ]]; then
  source /usr/share/zsh/manjaro-zsh-config
fi
# Use manjaro zsh prompt
if [[ -e /usr/share/zsh/manjaro-zsh-prompt ]]; then
  source /usr/share/zsh/manjaro-zsh-prompt
fi

# Aliases
alias l='eza -aagl --time-style "+%H:%M %d %b %Y"'

# History
HISTFILE=~/.zhistory

# Go path
[[ -d /usr/local/go/bin ]] && export PATH=$PATH:/usr/local/go/bin:$HOME/go/bin

# Prompt
setopt COMPLETE_ALIASES
setopt AUTO_CD
