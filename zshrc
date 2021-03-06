# ~/.zshrc: Personal parameters for zsh

#-------------------------------------------------------------------------------
# Environment variables
#-------------------------------------------------------------------------------
export DEVELOPER_FOLDER="$HOME"/Developer

export DEPOT_TOOLS="$DEVELOPER_FOLDER"/depot_tools
export EDITOR="vim"
export GEM_HOME=$HOME/.gem
export GITHUB_FOLDER="$DEVELOPER_FOLDER"/GitHub
export VISUAL="vim"
export XCODE="/Applications/Xcode.app"

#-------------------------------------------------------------------------------
# Path additions (LIFO)
#-------------------------------------------------------------------------------
export PATH="$HOME"/caskroom/bin:$PATH
export PATH="$GEM_HOME"/bin:$PATH
export PATH="$HOME"/homebrew/bin:$PATH
export PATH="$HOME"/bin:$PATH

#-------------------------------------------------------------------------------
# Personal aliases
#-------------------------------------------------------------------------------
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias -- -="cd -"
alias alert="terminal-notifier -message Done"
alias cp="cp -i"
alias f="git grep --line-number --ignore-case"
alias ffs="find . -name"
ff() {
  ffs "*$1*"
}
alias grep="grep --color=auto"
alias la="ls -a"
alias ll="ls -l"
alias lla="ls -la"
alias ls="ls -F -G -h"
alias md="mkdir -p"
alias mv="mv -i"
alias rm="rm -i"
alias xcode="open -a $XCODE"

#-------------------------------------------------------------------------------
# Workaround slow git completion with zsh
# http://stackoverflow.com/questions/9810327/git-tab-autocompletion-is-useless-can-i-turn-it-off-or-optimize-it/9810485#9810485
#-------------------------------------------------------------------------------
__git_files () {
    _wanted files expl 'local files' _files
}

#-------------------------------------------------------------------------------
# Prompt
# https://github.com/git/git/blob/master/contrib/completion/git-prompt.sh
#-------------------------------------------------------------------------------
source "$DEVELOPER_FOLDER"/dotfiles/git-prompt.sh
setopt PROMPT_SUBST ; PS1='%S%T %~ %#%s '
RPROMPT='%S$(__git_ps1 "%s")%s'

#-------------------------------------------------------------------------------
# Key bindings
#-------------------------------------------------------------------------------
# Beginning/end of line.
bindkey '^A' beginning-of-line
bindkey '^E' end-of-line
bindkey '^K' kill-line
# http://superuser.com/questions/349439/how-to-bind-command-key-in-zsh
bindkey '^[begin' beginning-of-line
bindkey '^[end' end-of-line

# Move by word.
bindkey "\e\e[C" forward-word
bindkey "\e\e[D" backward-word

# History search.
bindkey '^R' history-incremental-search-backward

# Up/down arrow search in history.
bindkey '^[[A' up-line-or-search
bindkey '^[[B' down-line-or-search

# Delete key.
bindkey "\e[3~" delete-char

#-------------------------------------------------------------------------------
# Completion style
# https://github.com/saimn/dotfiles/blob/master/zsh/completion.zsh
#-------------------------------------------------------------------------------
# Global completion behavior
zstyle ':completion:*:complete:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}'

# Colors when completing.
zstyle ':completion:*' list-colors 'di=34:ln=35:so=32:pi=33:ex=31:bd=46;34:cd=43;34:su=41;30:sg=46;30:tw=42;30:ow=43;30'

# Menu select
# http://zsh.sourceforge.net/Guide/zshguide06.html#l149
# http://www.refining-linux.org/archives/40/ZSH-Gem-5-Menu-selection/
# http://www.cs.elte.hu/zsh-manual/zsh_14.html#SEC52
# - Space: advance to the directory and open it for the completion
# - Backspace: undo the selection
zstyle ':completion:*' menu select
zmodload zsh/complist
bindkey -M menuselect ' ' accept-and-infer-next-history
bindkey -M menuselect '^?' undo

# Scheme A
# 1st tab: completes until the end of common part
# 2nd tab: gives a list of choices
# 3rd tab: completes with the 1st item of the list
# 4th tab: completes with the 2nd item of the list
# Default completion for `zsh`

# Scheme B
# 1st tab: gives a list of choices and completes with the 1st item
#          of the list
# 2nd tab: completes with the 2nd item of the list, etc.
#setopt MENU_COMPLETE

# Scheme C
# 1st tab: completes until the end of the common part and
#          gives a list of choices
# 2nd tab: completes with the 1st item of the list
# 3rd tab: completes with the 2nd item of the list, etc.
unsetopt LIST_AMBIGUOUS

# Type cd -<TAB> to show latest used folders.
setopt AUTO_PUSHD

#-------------------------------------------------------------------------------
# fpath additions (LIFO)
#-------------------------------------------------------------------------------
fpath=("$HOME"/homebrew/share/zsh-completions $fpath)

#-------------------------------------------------------------------------------
# History
#-------------------------------------------------------------------------------
export HISTORY=10000
export SAVEHIST=10000

export HISTFILE=$HOME/.history
setopt APPEND_HISTORY
setopt HIST_IGNORE_DUPS
setopt HIST_EXPIRE_DUPS_FIRST
setopt HIST_FIND_NO_DUPS
setopt HIST_VERIFY
setopt INC_APPEND_HISTORY

#-------------------------------------------------------------------------------
# Lines automatically added by some programs
#-------------------------------------------------------------------------------

# The following lines were added by compinstall
zstyle :compinstall filename '/Users/louis/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
