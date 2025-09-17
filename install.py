#!/usr/bin/env python3

import os
import subprocess
from pathlib import Path

from shell_config import setup_shell
from editor_config import setup_editors
from brew_install import install_brew_packages


def create_symlinks():
    dotfiles = ['.bashrc', '.zshrc', '.bash_prompt', '.zprompt', '.aliases', '.bash_profile', '.zprofile']
    home = Path.home()
    dotfiles_dir = home / 'dotfiles'

    for file in dotfiles:
        src = dotfiles_dir / file
        dst = home / file
        if not dst.exists():
            dst.symlink_to(src)
            print(f"Created symlink for {file}")


def run_macos_config():
    subprocess.run(['./macos_config.py'], check=True)


def main():
    create_symlinks()
    setup_shell()
    install_brew_packages()
    setup_editors()
    run_macos_config()


if __name__ == "__main__":
    main()
