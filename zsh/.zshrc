export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell"

plugins=(git)
plugins=(fzf)

bindkey -v

alias ..="cd .."
alias ...="cd ../.."

alias df="cd ~/.dotfiles"
alias nb="cd ~/Desktop/notebook"
alias dd="cd ~/Desktop"
alias pj="cd ~/Projects"

export PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
export PATH="$HOME/bin:$PATH"
export PATH="$HOME/go/bin:$PATH"
export PATH="$HOME/.asdf:$PATH"
export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/.local/share/nvim/mason/bin:$PATH"

source $ZSH/oh-my-zsh.sh

eval "$(/usr/local/bin/brew shellenv)"

if command -v brew &>/dev/null && [ -f "$(brew --prefix asdf)/libexec/asdf.sh" ]; then
  source "$(brew --prefix asdf)/libexec/asdf.sh"
fi

# The next line updates PATH for CLI.
if [ -f '/Users/roman/yandex-cloud/path.bash.inc' ]; then source '/Users/roman/yandex-cloud/path.bash.inc'; fi

# The next line enables shell command completion for yc.
if [ -f '/Users/roman/yandex-cloud/completion.zsh.inc' ]; then source '/Users/roman/yandex-cloud/completion.zsh.inc'; fi
