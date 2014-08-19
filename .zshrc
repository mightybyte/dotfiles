export PATH="${HOME}/.cabal/bin:/usr/local/bin:${PATH}"
export LD_LIBRARY_PATH="/usr/local/lib:/usr/lib"

setopt AUTO_CD

HISTSIZE=1000
SAVEHIST=1000
HISTFILE=~/.zsh_history
setopt HIST_IGNORE_DUPS

autoload -U compinit
compinit
setopt completealiases

prompt_setup () {
prompt_prompt=${1:-'blue'}
prompt_user=${2:-'green'}
prompt_root=${3:-'red'}

if [ "$USER" = 'root' ]
then
base_prompt="%B%F{$prompt_root}%m%k "
else
base_prompt="%B%F{$prompt_user}%n@%m%k "
fi
post_prompt="%b%f%k"

#setopt noxtrace localoptions

path_prompt="%B%F{$prompt_prompt}%1~"
PS1="$base_prompt$path_prompt %# $post_prompt"
PS2="$base_prompt$path_prompt %_> $post_prompt"
PS3="$base_prompt$path_prompt ?# $post_prompt"
}

prompt_setup "$@"

alias ls='ls -G'
alias ll='ls -al'

alias cc='cabal configure'
alias cb='cabal build | grep -v "^Loading package"'
alias ci='cabal install'
alias csa='cabal sandbox-add-source'
alias csc='cabal sandbox-configure'
alias csb='cabal sandbox-build'
alias csi='cabal sandbox-install'

export LSCOLORS='ExfxcxdxbxEgEdabagacad'
