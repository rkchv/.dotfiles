export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell"

plugins=(git)

source $ZSH/oh-my-zsh.sh
source ~/.zsh_profile

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

export PATH="$HOME/go/bin:$PATH"
export PATH="$HOME/lsp/lua-language-server/bin:$PATH"
export PATH="$HOME/lsp/lua-language-server/bin:$PATH"
export PATH="$HOME/lsp/bash-language-server/bin:$PATH"

