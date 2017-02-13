# Path to your oh-my-zsh installation.
export ZSH=~/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="../custom/agnoster"

# Uncomment the following line to use case-sensitive completion.
#CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
#ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
#ZSH_CUSTOM=$ZSH/custom

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git brew jump vi-mode)

# User configuration

##### Python path
PYTHONPATH="/usr/local/Cellar/pyqt/4.11.4/lib/python3.5/site-packages/:${PYTHONPATH}"
PYTHONPATH="/usr/local/Cellar/python3/3.5.1/bin/:${PYTHONPATH}"
export PYTHONPATH

# Pour l'environement de ruby
eval "$(rbenv init -)"


## comment that lines because the `brew doctor` cmd said that 
## a *-config were found into the path into /usr/local/gnat/bin
## to use it, uncomment that ligne
##### Gnat path
#PATH=$PATH:/usr/local/gnat/bin
#export PATH
####### Lustre path #########
export LUSTRE_INSTALL=/usr/local/lustre-v4-III-c-macosx
source $LUSTRE_INSTALL/setenv.sh

# Pour oracle / sqlplus
export PATH=~/instantclient_11_2:$PATH
alias sqlplus='rlwrap sqlplus'
######### AUTOCOMPLETION #########
autoload -U compinit
compinit
setopt completealiases

######## GLOBBING ETENDU au regexp###############
setopt extendedglob
setopt numericglobsort

######### PATH ################@
export PATH=$PATH:/usr/local/Caskroom/gcc-arm-embedded/5_2-2015q4,20151219/gcc-arm-none-eabi-5_2-2015q4/bin
export PATH=/usr/local/bin:$HOME/bin:$PATH

export MANPATH="/usr/local/man:$MANPATH"
export PATH="/usr/local/sbin:$PATH"

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
 export LANG=fr.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim -v'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
alias zconf="mvim -v ~/.zshrc"
alias zsrc="source ~/.zshrc"
alias ohmyzsh="mvim -v ~/.oh-my-zsh"

### zsh completion 
fpath=(/usr/local/share/zsh-completions $fpath)


######## LISTE DES ALIAS #########

alias ls='ls -GF'
alias ll='ls -a -l -h -F -G'
alias la='ls -aF -G'
alias lla='ls -AlFhG'
alias clr='clear'

## .tar ##
alias tarx='tar -zxvf'
alias tarc='tar -zcvf'

#alias vim='/Applications/MacVim.app/Contents/MacOS/Vim'
alias vim='mvim -v'

# Hombrew ctags
alias ctags="`brew --prefix`/bin/ctags"
alias meteo="curl -4 wttr.in/Grenoble"

# CP alias
alias cpr='cp -r'

# Jump alias
alias j='jump'


