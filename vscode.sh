#!/usr/bin/env zsh

# Check if Homebrew's bin exists and if it's not already in the PATH
if [ -x "/opt/homebrew/bin/brew" ] && [[ ":$PATH:" != *":/opt/homebrew/bin:"* ]]; then
    export PATH="/opt/homebrew/bin:$PATH"
fi

# Install VS Code Extensions
extensions=(
    ms-python.python
    ms-python.pylint
    ms-python.vscode-pylance
    ms-python.debugpy
    esbenp.prettier-vscode
    znck.grammarly

    aaron-bond.better-comments
    adpyke.codesnap
    alexcvzz.vscode-sqlite
    amazonwebservices.codewhisperer-for-command-line-companion
    christian-kohler.path-intellisense
    chrmarti.regex
    cstrap.python-snippets
    daylerees.rainglow
    devall.dracula-darcula
    donjayamanne.python-extension-pack
    dracula-theme.theme-dracula
    equinusocio.vsc-material-theme
    equinusocio.vsc-material-theme-icons
    esbenp.prettier-vscode
    freecodecamp.freecodecamp-dark-vscode-theme
    frhtylcn.pythonsnippets
    github.github-vscode-theme
    github.vscode-pull-request-github
    gnramsay.create-python-module
    grapecity.gc-excelviewer
    gruntfuggly.todo-tree
    hnw.vscode-auto-open-markdown-preview
    ibm.output-colorizer
    janisdd.vscode-edit-csv
    johnpapa.vscode-peacock
    johnpapa.winteriscoming
    kevinrose.vsc-python-indent
    ksivamuthu.vscode-peacock-twitch-client
    linusu.auto-dark-mode
    loilo.snazzy-light
    magicstack.magicpython
    mark-tucker.aws-cli-configure
    marnix.peacock
    mechatroner.rainbow-csv
    ms-azuretools.vscode-docker
    ms-python.autopep8
    ms-python.black-formatter
    ms-python.isort
    ms-toolsai.jupyter
    ms-toolsai.jupyter-keymap
    ms-toolsai.jupyter-renderers
    ms-vscode-remote.remote-containers
    ms-vscode-remote.remote-ssh
    ms-vscode-remote.remote-ssh-edit
    ms-vscode-remote.remote-wsl
    ms-vscode-remote.vscode-remote-extensionpack
    ms-vscode.remote-explorer
    ms-vscode.remote-server
    ms-vsliveshare.vsliveshare
    noxiz.jinja-snippets
    pkief.material-icon-theme
    qwtel.sqlite-viewer
    rangav.vscode-thunder-client
    ritwickdey.liveserver
    sallar.vscode-duotone-dark
    sdras.night-owl
    shd101wyy.markdown-preview-enhanced
    sleistner.vscode-fileutils
    sonarsource.sonarlint-vscode
    sourcegraph.cody-ai
    tomoki1207.pdf
    visualstudioexptteam.intellicode-api-usage-examples
    visualstudioexptteam.vscodeintellicode
    vscode-icons-team.vscode-icons
    vscodevim.vim
    wayou.vscode-todo-highlight
    wholroyd.jinja
    wmaurer.change-case
    wyattferguson.jinja2-snippet-kit
    yatki.vscode-surround
    yzhang.markdown-all-in-one
    )

# Get a list of all currently installed extensions.
installed_extensions=$(code --list-extensions)

for extension in "${extensions[@]}"; do
    if echo "$installed_extensions" | grep -qi "^$extension$"; then
        echo "$extension is already installed. Skipping..."
    else
        echo "Installing $extension..."
        code --install-extension "$extension"
    fi
done

echo "VS Code extensions have been installed."

# Define the target directory for VS Code user settings on macOS
VSCODE_USER_SETTINGS_DIR="${HOME}/Library/Application Support/Code/User/"

# Check if VS Code settings directory exists
if [ -d "$VSCODE_USER_SETTINGS_DIR" ]; then
    # Backup existing settings.json and keybindings.json, if they exist
    cp "${VSCODE_USER_SETTINGS_DIR}/settings.json" "${VSCODE_USER_SETTINGS_DIR}/settings.json.backup"
    cp "${VSCODE_USER_SETTINGS_DIR}/keybindings.json" "${VSCODE_USER_SETTINGS_DIR}/keybindings.json.backup"

    # Copy your custom settings.json and keybindings.json to the VS Code settings directory
    cp "settings/VSCode-Settings.json" "${VSCODE_USER_SETTINGS_DIR}/settings.json"
    cp "settings/VSCode-Keybindings.json" "${VSCODE_USER_SETTINGS_DIR}/keybindings.json"

    echo "VS Code settings and keybindings have been updated."
else
    echo "VS Code user settings directory does not exist. Please ensure VS Code is installed."
fi

# Open VS Code to sign-in to extensions
code .
echo "Login to extensions (Copilot, Grammarly, etc) within VS Code."
echo "Press enter to continue..."
read
