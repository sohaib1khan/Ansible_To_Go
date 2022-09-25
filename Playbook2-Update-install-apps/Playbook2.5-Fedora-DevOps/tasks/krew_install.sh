#!/usr/bin/env bash

krew_install(){
(
  set -x; cd "$(mktemp -d)" &&
  OS="$(uname | tr '[:upper:]' '[:lower:]')" &&
  ARCH="$(uname -m | sed -e 's/x86_64/amd64/' -e 's/\(arm\)\(64\)\?.*/\1\2/' -e 's/aarch64$/arm64/')" &&
  KREW="krew-${OS}_${ARCH}" &&
  curl -fsSLO "https://github.com/kubernetes-sigs/krew/releases/latest/download/${KREW}.tar.gz" &&
  tar zxvf "${KREW}.tar.gz" &&
  ./"${KREW}" install krew
)
}

krew_install > /dev/null 2>&1

if [ $? -eq 0 ]

    then
	    export PATH="${KREW_ROOT:-$HOME/.krew}/bin:$PATH"
    else
	    echo "Could not install krew"
fi
