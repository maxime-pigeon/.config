set fish_greeting
set -x EDITOR hx

alias python='python3'

function gl
    git log --all --graph --oneline
end

function gc
    git commit $argv
end

function gs
    git status $argv
end

function ga
    git add $argv
end

function ccd
    mkdir $argv[1]
    and cd $argv[1]
end

function fish_prompt
    printf "\e[6 q" # set cursor to bar
    printf '%s' (basename $(prompt_pwd)) (fish_git_prompt) " \$ "
end
