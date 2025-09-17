import shutil
from pathlib import Path

def setup_editors():
    home = Path.home()
    settings_dir = home / 'dotfiles' / 'settings'

    # Setup Sublime Text
    sublime_dir = home / 'Library' / 'Application Support' / 'Sublime Text 3' / 'Packages' / 'User'
    sublime_dir.mkdir(parents=True, exist_ok=True)

    for file in settings_dir.glob('*.sublime-*'):
        shutil.copy(file, sublime_dir)

    # Setup VS Code
    vscode_dir = home / 'Library' / 'Application Support' / 'Code' / 'User'
    vscode_dir.mkdir(parents=True, exist_ok=True)

    for file in settings_dir.glob('*.json'):
        if file.name in ['settings.json', 'keybindings.json']:
            shutil.copy(file, vscode_dir)

    print("Editor configurations copied.")