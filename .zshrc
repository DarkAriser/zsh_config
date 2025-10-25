# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

[[ ! -f /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh ]]        || source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh
[[ ! -f /opt/homebrew/share/powerlevel10k/powerlevel10k.zsh-theme ]]              || source /opt/homebrew/share/powerlevel10k/powerlevel10k.zsh-theme
[[ ! -f /opt/homebrew/opt/zsh-vi-mode/share/zsh-vi-mode/zsh-vi-mode.plugin.zsh ]] || source /opt/homebrew/opt/zsh-vi-mode/share/zsh-vi-mode/zsh-vi-mode.plugin.zsh

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Not sure shy this command has a space after the .
. /opt/homebrew/etc/profile.d/z.sh

# Set up fzf key bindings and fuzzy completion
#   CTRL-R : History
#   CTRL-T : File and Directory List
#   ALT -C : Directory List
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
source <(fzf --zsh)

##### Aliases {
alias ll='ls -lh'
alias l='ls -lh'
alias ltr='ls -ltrh'
alias la='ls -ltrah'

alias nv='nvim'
alias nvi='nvim ~/.config/nvim/init.lua'

alias nvrc='nvim ~/.zshrc'
alias srch='source ~/.zshrc'

alias grep='grep --color'
alias grepa='f() {grep -Rin --color -e $1 *};f'
##### }

##### Enable CTRL-Z to alias to 'fg'. Stolen from fancy-ctrl-z {
fancy-ctrl-z () {
  if [[ $#BUFFER -eq 0 ]]; then
    BUFFER="fg"
    zle accept-line -w
  else
    zle push-input -w
    zle clear-screen -w
  fi
}
zle -N fancy-ctrl-z
bindkey '^Z' fancy-ctrl-z
##### }

export TERM=xterm-kitty

##### HISTORY {
export HISTFILE=~~/.zsh_history
export HISTSIZE=1000000000
export SAVEHIST=1000000000
setopt INC_APPEND_HISTORY
setopt HIST_FIND_NO_DUPS
setopt HIST_IGNORE_DUPS
##### }

##### Enable colors
export CLICOLOR=1

##### Set up zsh-autosuggestions at the end so that it can see the state of our plugins
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
