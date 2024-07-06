{ pkgs, isGui }:

with pkgs;

[
    # CLI - Common Packages
    cowsay
    zsh
    neovim
    neofetch
    bat
    jq
    zip
    unzip

    # Devops tools - Common Packages
    kubectl

    # Programming Languages - Common Packages
    go
    gcc
    rustup
    python3
    python311Packages.pip
#    jdk21
#    nodejs_21

    # GUI only packages
] ++ (if isGui then [
    firefox
    google-chrome
    alacritty
    libnotify
    glib
    dconf
] else [])
