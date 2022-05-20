source ~/.zprofile
source ~/.nvm/nvm.sh
nvm use stable

setopt -S autocd
setopt -S histappend
setopt prompt_subst

export CLICOLOR=1

autoload -U colors && colors

HOSTNAME="bearslair"

# Functions
function mkcd(){
	mkdir $i && cd $i
}

parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

print_before_the_prompt () {
    dir=$PWD
    home=$HOME
    dir=${dir/"$HOME"/"~"}
    printf "\n $fg_bold[magenta]$USER@%s: $fg_bold[green]%s $fg_bold[cyan]%s\n$reset_color" "$HOSTNAME" "$dir" "$(vcprompt)"
}

PROMPT_COMMAND=print_before_the_prompt
precmd() { $PROMPT_COMMAND }
PS1="> "
fish
