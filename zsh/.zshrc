export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell"

plugins=(git)

source $ZSH/oh-my-zsh.sh

export GOBIN=$HOME/go/bin

export PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
export PATH="/usr/local/go/bin:$PATH"
export PATH="$HOME/bin:$PATH"
export PATH="$HOME/zig:$PATH"
export PATH="$HOME/Library/Python/3.9/bin:$PATH"
export PATH="$GOBIN:$PATH"
export PATH="$HOME/lsp/lua-language-server/bin:$PATH"
export PATH="$HOME/lsp/bash-language-server/bin:$PATH"
export PATH="$HOME/lsp/yaml-language-server/bin:$PATH"

export GOPRIVATE=gitlab.com
export GONOSUMDB=gitlab.com

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

