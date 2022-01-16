# Path to your oh-my-bash installation.
export OSH=/home/gricowijaya/.oh-my-bash

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-bash is loaded.
OSH_THEME="modern"

# Uncomment the following line to use case-sensitive completion.
CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_OSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

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

# Would you like to use another custom folder than $OSH/custom?
# OSH_CUSTOM=/path/to/new-custom-folder

# Which completions would you like to load? (completions can be found in ~/.oh-my-bash/completions/*)
# Custom completions may be added to ~/.oh-my-bash/custom/completions/
# Example format: completions=(ssh git bundler gem pip pip3)
# Add wisely, as too many completions slow down shell startup.
completions=(
  git
  composer
  ssh
)

# Which aliases would you like to load? (aliases can be found in ~/.oh-my-bash/aliases/*)
# Custom aliases may be added to ~/.oh-my-bash/custom/aliases/
# Example format: aliases=(vagrant composer git-avh)
# Add wisely, as too many aliases slow down shell startup.
aliases=(
  general
)

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-bash/plugins/*)
# Custom plugins may be added to ~/.oh-my-bash/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
  bashmarks
)

source $OSH/oh-my-bash.sh

# User configuration
# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='nvim'
fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-bash libs,
# plugins, and themes. Aliases can be placed here, though oh-my-bash
# users are encouraged to define aliases within the OSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias bashconfig="mate ~/.bashrc"
# alias ohmybash="mate ~/.oh-my-bash"

[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias clock='tty-clock -B -s'
alias sound='cava'
alias v='nvim'
alias vc='v .config/nvim'
alias vi='nvim'
alias vim='nvim'
alias r='ranger'
alias lg='lazygit'
alias n='neofetch --w3m'
alias m='mysql -u root -p'
alias par='php artisan'
alias b='brightnessctl -d "intel_backlight" set'
alias install='sudo pacman -S'
alias aurinstall='yay -S'
alias auruninstall='yay -Rs'
alias updatesystem='sudo pacman -Syyu'
alias uninstall='sudo pacman -R'
alias fulluninstall='sudo pacman -Rs'
alias t='tmux'
alias ta='tmux attach-session -t'
alias sleep='sudo systemctl suspend'
alias krs_prognet='cd /home/gricowijaya/Documents/Kuliah/Prognet/ProjectTugasAkhirKrsAn/'
alias cplaraveldev='cp /home/gricowijaya/scripts/bash-scripts/laraveldev.sh .'
alias polyc='v .config/polybar/minimal/config.ini'
alias runpoly='cd /home/gricowijaya/.config/polybar/&& ./launch.sh && cd ~'
alias i3c='nvim /home/gricowijaya/.config/i3/config'

if [[ -z $DISPLAY ]] && ! [[ -e /tmp/.X11-unix/X0 ]] && (( EUID )); then
  exec startx
fi

source /usr/share/fzf/key-bindings.bash
source /usr/share/fzf/completion.bash

PS1='[\u@\h \W]\$ '


[ -f ~/.fzf.bash ] && source ~/.fzf.bash
