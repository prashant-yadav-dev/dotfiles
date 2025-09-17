#!/usr/bin/env python3

import subprocess

def run_command(command):
    subprocess.run(command, shell=True, check=True)

def configure_macos():
    # Example macOS configurations
    run_command('defaults write com.apple.dock autohide -bool true')
    run_command('defaults write com.apple.finder AppleShowAllFiles YES')
    run_command('defaults write com.apple.finder ShowPathbar -bool true')

    # Restart affected applications
    run_command('killall Dock')
    run_command('killall Finder')

    print("macOS configurations applied.")

if __name__ == "__main__":
    configure_macos()