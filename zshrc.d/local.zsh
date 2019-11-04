# local.zsh

p=
if [ -d "${HOME}/root/bin" ] ; then
	p="${HOME}/root/bin"
fi

if [ -d "${HOME}/root/usr/bin" ] ; then
	p="${p:+${p}:}${HOME}/root/usr/bin"
fi

if [ -d "${HOME}/root/usr/local/bin" ] ; then
	p="${p:+${p}:}${HOME}/root/usr/local/bin"
fi

if [ -d "${HOME}/root/opt/bin" ] ; then
	p="${p:+${p}:}${HOME}/root/opt/bin"
fi


PATH=${p:+${p}:}${PATH}

