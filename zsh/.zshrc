export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell"

plugins=(git)
plugins=(fzf)

bindkey -v

alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."

alias df="cd ~/.dotfiles"
alias pj="cd ~/Desktop/now_dev"

export PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
export PATH="$HOME/bin:$PATH"
export PATH="$HOME/go/bin:$PATH"
export PATH="$HOME/.asdf:$PATH"
export PATH="$HOME/.asdf/installs/rust/$(asdf current rust | tail -n 1 | awk '{print $2}')/bin:$PATH"
export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/.local/share/nvim/mason/bin:$PATH"

export UNSAFE_PYO3_BUILD_FREE_THREADED=1

source $ZSH/oh-my-zsh.sh
source $(brew --prefix asdf)/libexec/asdf.sh


# pnpm
export PNPM_HOME="/Users/roman/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

# The next line updates PATH for CLI.
if [ -f '/Users/roman/yandex-cloud/path.bash.inc' ]; then source '/Users/roman/yandex-cloud/path.bash.inc'; fi

# The next line enables shell command completion for yc.
if [ -f '/Users/roman/yandex-cloud/completion.zsh.inc' ]; then source '/Users/roman/yandex-cloud/completion.zsh.inc'; fi

