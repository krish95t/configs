export ZSH="/home/saurabh/.oh-my-zsh"
ZSH_THEME="evan"
plugins=(git
    zsh-autosuggestions
    zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh
source $ZDOTDIR/aliases.sh
#eval "$(lua $ZDOTDIR/z.lua --init zsh enhanced once echo)"
#eval "$(starship init zsh)"
