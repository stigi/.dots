# Go from asdf. The asdf golang plugin sets GOROOT, GOPATH and GOBIN.
export ASDF_GOLANG_MOD_VERSION_ENABLED=false
if command -v asdf >/dev/null 2>&1 && [ -f "${ASDF_DATA_DIR:-$HOME/.asdf}/plugins/golang/set-env.zsh" ]; then
  . "${ASDF_DATA_DIR:-$HOME/.asdf}/plugins/golang/set-env.zsh"
fi
