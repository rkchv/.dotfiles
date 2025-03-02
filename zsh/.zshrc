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
export PATH="$HOME/lsp/zls/zig-out/bin:$PATH"

export GEM_HOME=~/.gems
export PATH=$GEM_HOME/bin:$PATH
export PATH="/usr/local/opt/ruby/bin:$PATH"
export LDFLAGS="-L/usr/local/opt/ruby/lib"
export CPPFLAGS="-I/usr/local/opt/ruby/include"
export PKG_CONFIG_PATH="/usr/local/opt/ruby/lib/pkgconfig"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

