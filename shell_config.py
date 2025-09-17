import os
from pathlib import Path


def setup_shell():
    home = Path.home()

    # Setup .shared_prompt
    shared_prompt = home / '.shared_prompt'
    with open(shared_prompt, 'w') as f:
        f.write("""
# Shared prompt configuration
prompt_git() {
    # Git prompt logic here
}

prompt_venv() {
    # Virtual environment prompt logic here
}
""")

    # Setup .bash_prompt
    bash_prompt = home / '.bash_prompt'
    with open(bash_prompt, 'w') as f:
        f.write("""
source "${HOME}/.shared_prompt"

PS1="\\$(prompt_venv)"
PS1+="\\[${bold}\\]\\n"
PS1+="\\[${userStyle}\\]\\u"
PS1+="\\[${white}\\] at "
PS1+="\\[${hostStyle}\\]\\h"
PS1+="\\[${white}\\] in "
PS1+="\\[${green}\\]\\W"
PS1+="\\$(prompt_git)"
PS1+="\\n"
PS1+="\\[${white}\\]\\$ \\[${reset}\\]"
export PS1

PS2="\\[${yellow}\\]→ \\[${reset}\\]"
export PS2
""")

    # Setup .zprompt
    zprompt = home / '.zprompt'
    with open(zprompt, 'w') as f:
        f.write("""
source "${HOME}/.shared_prompt"

PS1="$(prompt_venv)"
PS1+="%{${bold}%}\\n"
PS1+="%{${userStyle}%}%n"
PS1+="%{${white}%} at "
PS1+="%{${hostStyle}%}%m"
PS1+="%{${white}%} in "
PS1+="%{${green}%}%c"
PS1+="$(prompt_git)"
PS1+="\\n"
PS1+="%{${white}%}$ %{${reset}%}"
export PS1

PS2="%{${yellow}%}→ %{${reset}%}"
export PS2
""")

    print("Shell configuration files created.")
