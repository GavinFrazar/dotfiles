pathadd() {
    if [ -d "$1" ] && [[ ":$PATH:" != *":$1:"* ]]; then
        PATH="${PATH:+"$PATH:"}$1"
    fi
}

pathadd $HOME/.local/bin
pathadd $HOME/bin
pathadd $HOME/local/bin
pathadd $HOME/anaconda3/bin
pathadd $HOME/.emacs.d/bin
pathadd $HOME/.scripts/tools
pathadd /usr/local/cuda/bin:/usr/local/cuda/NsightCompute-2019.1
export PATH

