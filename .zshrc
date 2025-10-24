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

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh


. /opt/homebrew/etc/profile.d/z.sh


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

export TERM=xterm-kitty

##### HISTORY
HISTFILE=~~/.zsh_history
HISTSIZE=1000000000
SAVEHIST=1000000000
setopt INC_APPEND_HISTORY
setopt HIST_FIND_NO_DUPS
setopt HIST_IGNORE_DUPS

