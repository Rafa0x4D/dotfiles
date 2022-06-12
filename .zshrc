# Path to your oh-my-zsh installation.
export ZSH="${HOME}/.oh-my-zsh"
source $ZSH/oh-my-zsh.sh

TERM=xterm-256color

ZSH_THEME="simple"
plugins=(git)

# Unicode characters
# \UF427    Tux: 🐧 
# \U2318    Command: ⌘
# \UF8FF    Apple logo: 

# Prompt
PROMPT=$'\n'"%F{green}"$'\UF8FF'" %*%F{063} %5~ %F{green}"'$(git_prompt_info)'
PROMPT+=$'\n'"%F{green}$ %F{white}"

ZSH_THEME_GIT_PROMPT_PREFIX="("
ZSH_THEME_GIT_PROMPT_SUFFIX=")"
ZSH_THEME_GIT_PROMPT_DIRTY=" ✗"
ZSH_THEME_GIT_PROMPT_CLEAN=" ✔"

# Keybindings
## alt (option) + right arrow
bindkey "^[[1;3C" forward-word
## alt (option) + left arrow
bindkey "^[[1;3D" backward-word

# Aliases
alias gl='git log --graph --pretty=format:"%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset" --abbrev-commit'
alias os='openstack'
alias ovs='ovs-vsctl'
alias journal='journalctl -xe'

## Docker
alias dc='docker-compose'
alias dcu='docker-compose up -d'

## Vagrant
alias vg='vagrant'
alias vgu='vagrant up'
alias vgh='vagrant halt'
alias vgr='vagrant reload'
alias vgd='vagrant destroy'
alias vgs='vagrant ssh'
alias vgb='vagrant box'