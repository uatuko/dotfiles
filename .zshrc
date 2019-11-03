#
# .zshrc
# Author: Uditha Atukorala
# Version: 2019-11-02
#


# zplug
source ~/.zplug/init.zsh

# pure
zplug mafredri/zsh-async, from:github
zplug sindresorhus/pure, use:pure.zsh, from:github, as:theme

# [zplug] load plugins
zplug load --verbose

# fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

