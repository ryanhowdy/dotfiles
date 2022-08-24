__has_parent_dir () {
    # Utility function so we can test for things like .git/.hg without firing up a
    # separate process
    test -d "$1" && return 0;

    current="."
    while [ ! "$current" -ef "$current/.." ]; do
        if [ -d "$current/$1" ]; then
            return 0;
        fi
        current="$current/..";
    done

    return 1;
}

__vcs_name() {
    if [ -d .svn ]; then
        echo "-[svn]";
    elif __has_parent_dir ".git"; then
        echo "-[$(__git_ps1 'git %s')]";
    elif __has_parent_dir ".hg"; then
        echo "-[hg $(hg branch)]"
    fi
}

black=$(tput -Txterm setaf 0)
red=$(tput -Txterm setaf 1)
green=$(tput -Txterm setaf 2)
yellow=$(tput -Txterm setaf 3)
dk_blue=$(tput -Txterm setaf 4)
pink=$(tput -Txterm setaf 5)
lt_blue=$(tput -Txterm setaf 6)
bold=$(tput -Txterm bold)
reset=$(tput -Txterm sgr0)

# Nicely formatted terminal prompt
export PS1='\n\[$bold\]\[$black\][\[$dk_blue\]\@\[$black\]]-[\[$green\]\u\[$yellow\]@\[$green\]\h\[$black\]]-[\[$pink\]\w\[$black\]]\[\033[0;33m\]$(__vcs_name) \[\033[00m\]\[$reset\]\n\[$reset\]\$ '

alias ls='clear; ls -AgsFXB --color=auto'
alias whatchmod='stat -c %a'
alias fixdirectories='find ./ -type d -exec chmod 755 {} \;'
alias fixfiles='find ./ -type f -exec chmod 644 {} \;'

export TERM='xterm-256color'
export LANG='en_US.UTF-8'
export EDITOR="vim"
export SVN_EDITOR="vim"
export GREP_OPTIONS="--exclude=*.svn*"
eval "`dircolors -b`"

export PATH=$HOME/local/bin:$PATH
