export SSH_AUTH_SOCK="$XDG_RUNTIME_DIR/ssh-agent.socket"

[[ "$XDG_VTNR" = 1 ]] && pacman -Qq sway &> /dev/null && exec sway --unsupported-gpu
