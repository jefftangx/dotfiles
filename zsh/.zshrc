# Aliases
alias soz="source ~/.zshrc"
alias sob="source ~/.bashrc"
alias sop="source ~/.profile"
alias l='ls -G -l -a'
alias g="git"
alias v='vim'
alias pip="pip3"
alias py="python3"


# zshrc packages and config
export ZDOTDIR=$HOME/.zsh
source $ZDOTDIR/antigen.zsh
antigen use oh-my-zsh
antigen bundle andrewferrier/fzf-z
antigen bundle olivierverdier/zsh-git-prompt
antigen bundle robbyrussell/oh-my-zsh lib/git.zsh
antigen bundle robbyrussell/oh-my-zsh plugins/colored-man-pages
antigen bundle robbyrussell/oh-my-zsh plugins/colorize
antigen bundle robbyrussell/oh-my-zsh plugins/vi-mode
antigen bundle rupa/z
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-history-substring-search
antigen bundle zsh-users/zsh-syntax-highlighting
antigen theme romkatv/powerlevel10k
antigen apply

# To customize prompt, run `p10k configure` or edit ~/.zsh/.p10k.zsh.
[[ ! -f ~/.zsh/.p10k.zsh ]] || source ~/.zsh/.p10k.zsh



# NVM (lazy-loaded for faster shell startup)
export NVM_DIR="$HOME/.nvm"
# Lazy load nvm - only initialize when first used
alias nvm='unalias nvm node npm npx && [ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh" && [ -s "$NVM_DIR/bash_completion" ] && . "$NVM_DIR/bash_completion" && nvm'
alias node='unalias nvm node npm npx && [ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh" && [ -s "$NVM_DIR/bash_completion" ] && . "$NVM_DIR/bash_completion" && node'
alias npm='unalias nvm node npm npx && [ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh" && [ -s "$NVM_DIR/bash_completion" ] && . "$NVM_DIR/bash_completion" && npm'
alias npx='unalias nvm node npm npx && [ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh" && [ -s "$NVM_DIR/bash_completion" ] && . "$NVM_DIR/bash_completion" && npx'

# Rust
. "$HOME/.cargo/env"
