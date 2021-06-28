ZSH=$HOME/.oh-my-zsh

ZSH_THEME="awesomepanda"

plugins=(git gitfast last-working-dir common-aliases history-substring-search chucknorris ssh-agent)

source "${ZSH}/oh-my-zsh.sh"
unalias rm 

export PATH="${HOME}/.rbenv/bin:${PATH}"
type -a rbenv > /dev/null && eval "$(rbenv init -)"

export PATH="${HOME}/.pyenv/bin:${PATH}" 
type -a pyenv > /dev/null && eval "$(pyenv init -)" && eval "$(pyenv virtualenv-init -)"

export NVM_DIR="$HOME/.nvm"
[ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"

export PATH="./bin:./node_modules/.bin:${PATH}:/usr/local/sbin"

[[ -f "$HOME/.aliases" ]] && source "$HOME/.aliases"

export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8
export BUNDLER_EDITOR="'/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl' -a"
export BUNDLER_EDITOR="subl $@ >/dev/null 2>&1 -a"
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

chuck_cow
musa

eval "$(starship init zsh)"
