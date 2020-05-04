function fish_greeting
    shuf -n1 ~/.config/fish/greetings
end

function fish_prompt
    set -g CLANKER_STATUS $status
    clanker prompt
end

function fish_right_prompt
    clanker right-prompt "-r$CLANKER_STATUS"
end

function fish_title
    clanker title "-c$_"
end

source ~/miniconda3/etc/fish/conf.d/conda.fish

alias ssh='kitty +kitten ssh'
kitty + complete setup fish | source
