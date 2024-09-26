# .zshrc

HISTSIZE=1000000
SAVEHIST=$HISTSIZE

setopt hist_reduce_blanks
setopt hist_ignore_space
setopt hist_ignore_all_dups
setopt inc_append_history
setopt share_history

# macports
if [ -d /opt/local/bin ] ; then
	PATH="/opt/local/bin:/opt/local/sbin:/opt/local/libexec/gnubin${PATH:+:${PATH}}"
fi


# zplug
source ~/.zplug/init.zsh

# ua
zplug uatuko/dotfiles, use:"zshrc.d/*", defer:2

# pure
zplug mafredri/zsh-async, from:github
zplug sindresorhus/pure, use:pure.zsh, from:github, as:theme

# [zplug] load plugins
zplug load


# fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Drop duplicates from PATH
typeset -aU path

