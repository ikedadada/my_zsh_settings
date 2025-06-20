# This file is sourced by zsh when it starts up.
export LANG="ja_JP.UTF-8"

#### --- Antidote ---------------------------------------------------------
source /home/linuxbrew/.linuxbrew/opt/antidote/share/antidote/antidote.zsh
antidote load

#### --- Prompt (Starship) ------------------------------------------------
eval "$(starship init zsh)"

#### --- Toolchains -------------------------------------------------------
eval "$(mise activate zsh)"          # language/runtime manager
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
