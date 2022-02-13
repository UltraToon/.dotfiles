# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

source ~/powerlevel10k/powerlevel10k.zsh-theme
source ~/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# To customize prompt, run `p10k configure` or edit /usr/home/ivan/.p10k.zsh.
[[ ! -f /usr/home/ivan/.p10k.zsh ]] || source /usr/home/ivan/.p10k.zsh

alias ls='lsd'
alias cp='cp -i'
alias mv='mv -i'
alias rm='rm -i'
alias df='df -h'     # human-readable sizes
alias free='free -m' # show sizes in MB

# get top process eating memory
alias psmem='ps auxf | sort -nr -k 4 | head -5'

# get top process eating cpu ##
alias pscpu='ps auxf | sort -nr -k 3 | head -5'

# For when keys break
alias archlinx-fix-keys='sudo pacman-key --init && sudo pacman-key --populate archlinux && sudo pacman-key --refresh-keys'

export MANPAGER='nvim +Man!'
export MANWIDTH='999'
export XDG_CONFIG_HOME=$HOME/.config
export EDITOR=nvim
