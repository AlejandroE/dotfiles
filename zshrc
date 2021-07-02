#Babbel dev tools and completions
export PATH="$HOME/babbel/development.cli/bin:$PATH"
source "$HOME/babbel/development.cli/completions/babbel.zsh"

#rbenv stuff
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

#Updated Pure zsh
fpath+=("$HOME/dotfiles/pure")
autoload -U promptinit; promptinit

# optionally define some pure options
PURE_PROMPT_SYMBOL=🍕
#PURE_GIT_DOWN_ARROW=🔻
#PURE_GIT_UP_ARROW=🔺
prompt pure

# source ~/.bin/tmuxinator.zsh

## History
HISTFILE=$HOME/.zhistory       # enable history saving on shell exit
setopt APPEND_HISTORY          # append rather than overwrite history file.
HISTSIZE=1200                  # lines of history to maintain memory
SAVEHIST=1000                  # lines of history to maintain in history file.
setopt HIST_EXPIRE_DUPS_FIRST  # allow dups, but expire old ones when I hit HISTSIZE

fpath=(/usr/local/share/zsh-completions $fpath)

alias vim="nvim"
alias vi="nvim"
alias oldvim="\vim"

#alias postgres
alias -g pg-start='pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start'

alias -g tms='tmuxinator start babbel'
#alias -g phrase push='phrase push phrase/locales/phrase.en.yml --locale=en'
alias -g k-tms='tmux kill-session -t devenv'
#color directory list
alias -g ls='ls -G'
#launch insecure canary
alias canary='/Applications/Google\ Chrome\ Canary.app/Contents/MacOS/./Google\ Chrome\ Canary --unsafely-treat-insecure-origin-as-secure="http://my.babbel.dev/" --user-data-dir=/Users/aechandia/canary/Library/Application\ Support/Google/Chrome/Default'

#alias bclean = "!f() { git branch --merged ${1-master} | grep -vE '(master|production)' | xargs git branch -d; }; f"

alias -g namerelease= curl -s 'http://165.227.17.126/api/random' | awk -F\" '{gsub ("[: ]", "-"); print "release-"$4}'
alias -g fixpure='prompt_pure_async_init=0; async_stop_worker prompt_pure'

autoload -U compinit && compinit
zmodload -i zsh/complist

setopt completealiases          # complete alisases
setopt always_to_end            # when completing from the middle of a word, move the cursor to the end of the word
setopt complete_in_word         # allow completion from within a word/phrase
# setopt correct                  # spelling correction for commands
setopt list_ambiguous           # complete as much of a completion until it gets ambiguous.

setopt auto_cd                  # if command is a path, cd into it
setopt auto_remove_slash        # self explicit
setopt print_exit_value         # print return value if non-zero
unsetopt beep                   # no bell on error
unsetopt hist_beep              # no bell on error in history
unsetopt list_beep              # no bell on ambiguous completion

# eval "$(docker-machine env default)"
export LC_ALL="de_de.utf-8"
export EDITOR='nvim'

# FZF
# --files: List files that would be searched but do not search
# --no-ignore: Do not respect .gitignore, etc...
# --hidden: Search hidden files and folders
# --follow: Follow symlinks
# --glob: Additional conditions for search (in this case ignore everything in the .git/ folder)
export FZF_DEFAULT_COMMAND='rg --files --hidden --follow --glob "!.git/*"'

#nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
# [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion


export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

[[ -s "$HOME/.avn/bin/avn.sh" ]] && source "$HOME/.avn/bin/avn.sh" # load avn

export PATH="$HOME/.yarn/bin:$PATH"

# include Z
. ~/dotfiles/z/z.sh

alias -g lyrics='f() { curl -s --get "https://makeitpersonal.co/lyrics" --data-urlencode "artist=$1" --data-urlencode "title=$2" };f'

# Load env variables
source ~/.zsh_env_vars

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
