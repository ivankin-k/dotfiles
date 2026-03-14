[[ "$XDG_VTNR" = 1 ]] && pacman -Qq sway > /dev/null 2>1 && exec sway
