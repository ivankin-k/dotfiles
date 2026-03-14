[[ "$XDG_VTNR" = 1 ]] && pacman -Qq sway &> /dev/null  && exec sway
