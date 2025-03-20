HISTSIZE=10000
SAVEHIST=10000
HISFILE=~/.zsh_history

autoload -Uz compinit
compinit

setopt AUTO_PUSHD
setopt PUSHD_IGNORE_DUPS

eval "$(starship init zsh)"

# bun completions
[ -s "$HOME/.bun/_bun" ] && source "$HOME/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
