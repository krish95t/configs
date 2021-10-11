## Setting XDGs :)->
export XDG_CONFIG_HOME=${XDG_CONFIG_HOME:="$HOME/.config"}
export XDG_CACHE_HOME=${XDG_CACHE_HOME:="$HOME/.cache"}
export XDG_DATA_HOME=${XDG_DATA_HOME:="$HOME/.local/share"}
export XDG_STATE_HOME=${XDG_STATE_HOME:="$HOME/.local/state"}
export ZDOTDIR=$HOME/.config/zsh

## Setting xdgs for applications :>->
export CARGO_HOME="$XDG_DATA_HOME"/cargo
export RUSTUP_HOME="$XDG_DATA_HOME"/rustup
#export _JAVA_OPTIONS=-Djava.util.prefs.userRoot="$XDG_CONFIG_HOME"/java
export NODE_REPL_HISTORY="$XDG_DATA_HOME"/node_repl_history
export HISTFILE=$ZDOTDIR/.history.zsh
export EDITOR=nvim


# Adding jvm to the path variable
if [ -d /usr/lib/jvm/jdk-17/bin ] ; then
	PATH="/usr/lib/jvm/jdk-17/bin:$PATH"
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi

# Adding cargo installers path
if [ -f ${CARGO_HOME}/env ] ; then
	. "/home/saurabh/.local/share/cargo/env"
fi

if [ -d "/usr/local/lib/node-v14-lts/bin" ]; then
    PATH="/usr/local/lib/node-v14-lts/bin:$PATH"
fi
