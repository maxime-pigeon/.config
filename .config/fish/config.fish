# Remove greeting
set -g fish_greeting

function ccd
    mkdir $argv[1]
    cd $argv[1]
end

# Prompt
function fish_prompt
    printf "\e[6 q"  # set cursor to bar
    printf '%s' (basename $(prompt_pwd)) (fish_git_prompt) " \$ "
end

# Aliases
alias vi='nvim'
alias python='python3'

set -g EDITOR nvim
