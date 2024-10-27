# go.zsh

if [ -d "${HOME}/root/opt/go/bin" ] ; then
	export GOROOT="${HOME}/root/opt/go"
	export GOPATH="${HOME}/wb/go"

	PATH="${GOROOT}/bin:${GOPATH}/bin${PATH:+:${PATH}}"
fi

