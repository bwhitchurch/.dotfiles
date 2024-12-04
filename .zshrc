# The following lines were added by compinstall

zstyle ':completion:*' auto-description 'specify %d'
zstyle ':completion:*' completer _expand _complete _ignored _approximate
zstyle ':completion:*' completions 1
zstyle ':completion:*' format 'Completing %d'
zstyle ':completion:*' glob 1
zstyle ':completion:*' group-name ''
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"
zstyle ':completion:*' list-prompt %SAt %p: Hit TAB for more, or the character to insert%s
zstyle ':completion:*' max-errors 2
zstyle ':completion:*' prompt 'matches with no more than %e differences'
zstyle ':completion:*' substitute 1
zstyle ':completion:*' use-compctl false
zstyle ':completion:*' verbose true
zstyle ':compinstall' filename '~/.zshrc'

# End of lines added by compinstall
# Lines configured by zsh-newuser-install

bindkey -v
# End of lines configured by zsh-newuser-install
autoload -Uz tripinstalldir
autoload -Uz gitignoreio

if [[ -f ~/.dircolors ]] ; then
    eval "$(dircolors -b ~/.dircolors)"
fi
function zsudo() {
    sudo zsh -c "${functions[${1}]}" "${@}"
}

pgrep powerline >> /dev/null || powerline-daemon -q
source /home/brandon/.local/lib/python3.12/site-packages/powerline/bindings/zsh/powerline.zsh

autoload -Uz compinit && compinit
autoload -Uz bashcompinit && bashcompinit

_fly_compl() {
	args=("${COMP_WORDS[@]:1:$COMP_CWORD}")
	local IFS=$'\n'
	COMPREPLY=($(GO_FLAGS_COMPLETION=1 ${COMP_WORDS[0]} "${args[@]}"))
	return 0
}
complete -F _fly_compl fly
PROG=tea _CLI_ZSH_AUTOCOMPLETE_HACK=1 source "/home/brandon/.config/tea/autocomplete.zsh"

# Generated for envman. Do not edit.
[ -s "$HOME/.config/envman/load.sh" ] && source "$HOME/.config/envman/load.sh"


eval "$(gh copilot alias -- zsh)"
