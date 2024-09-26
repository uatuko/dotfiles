# go.zsh

if [ -d "${HOME}/root/opt/go/bin" ] ; then
	export GOROOT="${HOME}/root/opt/go"
	export GOPATH="${HOME}/workbench/go"

	PATH="${GOROOT}/bin:${GOPATH}/bin${PATH:+:${PATH}}"
fi

