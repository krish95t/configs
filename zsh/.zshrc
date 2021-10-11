export ZSH="/home/saurabh/.oh-my-zsh"
ZSH_THEME="fishy"
plugins=(git zsh-autosuggestions
    zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh
for sh in $ZDOTDIR/autoload/* ; do . $sh ; done
eval "$(lua $ZDOTDIR/z.lua --init zsh enhanced once echo)"
