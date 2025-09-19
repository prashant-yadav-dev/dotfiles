# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH

# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time Oh My Zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="agnoster-custom"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git 
  zsh-autocomplete
  zsh-autosuggestions
  zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
alias tree="find . -print | sed -e 's;[^/]*/;|____;g;s;____|; |;g'"
alias tree2="find . -not -path '*/\.*' -print | sed -e 's;[^/]*/;|____;g;s;____|; |;g'"
alias ptree="find . -not \( -path '*/\.*' -o -name '*.pyc' \) -print | sed -e 's;[^/]*/;|____;g;s;____|; |;g'"

alias la="exa -la"

# Disable the default (venv) for custom venv prompt
export VIRTUAL_ENV_DISABLE_PROMPT=1
# Example aliases
alias zshconfig="code ~/.zshrc"
alias ohmyzsh="code ~/.oh-my-zsh"
#alias for slack
alias slack_status="$HOME/Documents/code/status && source venv/bin/activate && python3 status.py"

# alias for docker
alias d='docker'
alias dps='docker ps'
alias di='docker images'
alias db='docker build -t'
alias dr='docker run -it --rm'
alias drm='docker rm'
alias drmi='docker rmi'
alias dlogs='docker logs -f --tail=100'
alias dexec='docker exec -it'
alias dstop='docker stop'
alias dstart='docker start'
alias drestart='docker restart'
alias dkill='docker kill'
alias dprune='docker system prune -f --volumes'
# aliases for docker compose
alias dc='docker compose'
alias dcu='docker compose up'
alias dcd='docker compose down'
alias dcb='docker compose build'
alias dcl='docker compose logs -f --tail=100'
alias dce='docker compose exec'
alias dcp='docker compose ps'
alias dcr='docker compose restart'
alias dci='docker compose images'
alias dcf='docker compose stop && docker compose rm -f'

# alias for terraform
alias tf='terraform'

#alias for git
alias gs='git status'

# alias for python
alias py='python3'
alias py3.10='python3.10'
alias py3.11='python3.11'
alias py3.12='python3.12'
alias pip='pip3'
alias venv='python3 -m venv venv && source venv/bin/activate'
alias venv3.10='python3.10 -m venv venv && source venv/bin/activate'
alias uvenv="uv venv && source .venv/bin/activate"

