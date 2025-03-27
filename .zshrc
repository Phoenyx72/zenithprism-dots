#Functions
ZSH_THEME="agnosterzak"
plugins=( 
    git
    dnf
    zsh-autosuggestions
    zsh-syntax-highlighting
)
source ~/.oh-my-zsh/oh-my-zsh.sh
pokemon-colorscripts --no-title -s -r | fastfetch -c $HOME/.config/fastfetch/config-pokemon.jsonc --logo-type file-raw --logo-height 10 --logo-width 5 --logo -
source <(fzf --zsh)
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt appendhistory

#Startup
eval "$(starship init zsh)"

#Aliases
alias spotify='spotifyd --no-daemon & ; spt'
alias ls='lsd'
alias l='ls -l'
alias la='ls -a'
alias lla='ls -la'
alias lt='ls --tree'
alias lo='hyprctl dispatch exit'
alias sleep="systemctl suspend"

#Environment Variables
export PATH="$HOME/.cargo/bin:$PATH"
export ZSH="$HOME/.oh-my-zsh"
