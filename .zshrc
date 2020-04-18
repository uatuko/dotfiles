# .zshrc

HISTSIZE=50000

setopt histreduceblanks
setopt histignorespace
setopt histignorealldups

# macports
if [ -d /opt/local/bin ] ; then
	PATH="/opt/local/bin:/opt/local/sbin:/opt/local/libexec/gnubin${PATH:+:${PATH}}"
fi


# zplug
source ~/.zplug/init.zsh

# ua
zplug uditha-atukorala/dotfiles, use:"zshrc.d/*", defer:2

# pure
zplug mafredri/zsh-async, from:github
zplug sindresorhus/pure, use:pure.zsh, from:github, as:theme

# [zplug] load plugins
zplug load


# fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Drop duplicates from PATH
typeset -aU path

