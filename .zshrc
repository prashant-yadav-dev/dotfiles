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


# === Venv Activation Helper ===
# activate_venv function usage:
# 1. To activate the nearest venv (searches current and subdirectories):
#    activate_venv
# 2. To activate a specific named venv (e.g., 'myenv'):
#    activate_venv myenv
# 3. To create a new venv with a specific Python version if not found (e.g., python3.11):
#    activate_venv myenv python3.11
# 4. To create a new venv with default python3.10 if not found:
#    activate_venv myenv  
# 5. To create a new .venv with default python3.10 if not found:
#    activate_venv
# 6. To create a new .venv with specific python version if not found:
#    activate_venv "" python3.11
# Note: Ensure 'uv' is installed for automatic venv creation if needed.
activate_venv() {
  # Accept optional arguments: 
  # $1: Specific VENV_NAME to search for/create. Defaults to flexible search.
  # $2: Specific Python binary to use for creation. Defaults to python3.10.
  local INPUT_VENV_NAME="$1"
  local PYTHON_BIN="${2:-python3.10}" # Default python for creation is python3.10
  local VENV_DIR=""

  # Check if we are already in an activated environment
  if [[ -n "$VIRTUAL_ENV" ]]; then
    echo "Deactivating current virtual environment: $(basename "$VIRTUAL_ENV")"
    deactivate
  fi

  # 1. Search for a venv directory in the current location or immediate subdirectories
  
  if [[ -n "$INPUT_VENV_NAME" ]]; then
    # If a specific VENV_NAME is provided, look only for that
    if [[ -d "$INPUT_VENV_NAME" ]]; then
      VENV_DIR="$INPUT_VENV_NAME"
    fi
  else
    # Prioritize the standard .venv directory in the current folder (if no specific name given)
    if [[ -d ".venv" ]]; then
      VENV_DIR=".venv"
    fi

    # If not found, search recursively up to depth 2 for directories containing 'venv'
    if [[ -z "$VENV_DIR" ]]; then
      # Search for directories containing 'venv' but exclude common ignored folders like .git, .vscode, etc.
      # We rely on 'find' to give us a simple path to the first match.
      VENV_DIR=$(find . -maxdepth 2 -type d -name '*venv*' \
        ! -name '.*' ! -name 'node_modules' \
        ! -path './.git*' ! -path './.vscode*' 2>/dev/null | head -n 1)
      
      if [[ -n "$VENV_DIR" ]]; then
        # Clean up the path prefix if 'find' returned './<path>'
        VENV_DIR="${VENV_DIR#./}"
      fi
    fi
  fi
  
  # 2. If VENV_DIR is still empty, attempt to create it using uv
  if [[ -z "$VENV_DIR" ]]; then
    # Venv not found. Try to create with uv.
    if command -v uv &> /dev/null; then
      
      # Determine the name of the VENV to create (use input or default to .venv)
      local VENV_TO_CREATE="${INPUT_VENV_NAME:-.venv}"

      echo "No existing virtual environment found. Attempting to create one named '$VENV_TO_CREATE' using '$PYTHON_BIN'..."
      
      # Use the specified python binary for creation
      if uv venv "$VENV_TO_CREATE" --python "$PYTHON_BIN"; then
        echo "Successfully created virtual environment: $VENV_TO_CREATE"
        VENV_DIR="$VENV_TO_CREATE"
      else
        echo "Error: Failed to create virtual environment '$VENV_TO_CREATE'. Ensure '$PYTHON_BIN' is installed and available."
        return 1
      fi
    else
      # uv not found, so we can't create it.
      echo "Error: No virtual environment directory found, and 'uv' is not installed for automatic creation."
      echo "Please ensure your virtual environment is created, or install 'uv'."
      return 1
    fi
  fi

  # 3. Construct the full path to the activation script
  local ACTIVATE_SCRIPT=""

  # Common Linux/macOS activation script path
  if [[ -f "$VENV_DIR/bin/activate" ]]; then
    ACTIVATE_SCRIPT="$VENV_DIR/bin/activate"
  
  # Common Windows activation script path (e.g., used when running Git Bash or WSL)
  elif [[ -f "$VENV_DIR/Scripts/activate" ]]; then
    ACTIVATE_SCRIPT="$VENV_DIR/Scripts/activate"
  fi

  if [[ -z "$ACTIVATE_SCRIPT" ]]; then
    echo "Error: Activation script not found in '$VENV_DIR'."
    return 1
  fi

  # 4. Source the script to activate the environment
  echo "Activating virtual environment: $VENV_DIR"
  source "$ACTIVATE_SCRIPT"
}

# === End Venv Activation Helper ===
