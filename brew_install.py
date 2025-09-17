import subprocess

def install_brew_packages():
    brew_packages = [
        'git', 'python', 'node', 'tree', 'wget', 'zsh'
    ]

    brew_casks = [
        'sublime-text', 'visual-studio-code', 'iterm2'
    ]

    subprocess.run(['brew', 'update'], check=True)
    
    for package in brew_packages:
        subprocess.run(['brew', 'install', package], check=True)

    for cask in brew_casks:
        subprocess.run(['brew', 'install', '--cask', cask], check=True)

    print("Homebrew packages and casks installed.")