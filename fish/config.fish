alias python='python3'

set fish_greeting
set -x EDITOR nvim

alias vim='nvim'

function gl
    git log --all --graph --oneline $argv
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

function gsw
    git switch $argv
end

function ccd
    mkdir $argv[1]
    and cd $argv[1]
end

function cdf
    cd $(fd -t directory | fzf --border-label=' Change Directory ')
end

function fish_prompt
    printf '%s' (basename $(prompt_pwd)) (fish_git_prompt) " \$ "
end

set -x FZF_DEFAULT_COMMAND 'fd --type f --strip-cwd-prefix'
set -x FZF_DEFAULT_OPTS "\
--layout=reverse \
--no-scrollbar \
--color='\
gutter:-1,\
pointer:bright-white,\
fg:bright-white,\
hl:white,\
hl+:white' \
--prompt='' \
--border=rounded \
--no-info"
