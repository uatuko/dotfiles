# aliases.zsh

# Enable color support of ls and also add handy aliases
if [ -x "$(which dircolors)" ] ; then
	test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
	alias ls='ls --color=auto'

	alias grep='grep --color=auto'
fi

# ls aliases
alias ll='ls -l'
alias la='ls -la'
alias l='ls -CF'
alias lt='ls -lt'
alias ltr='ls -ltr'

# Shortcuts
alias h=history
alias vir='vim -R'

