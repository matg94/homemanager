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
    dig

    # Devops tools - Common Packages
    kubectl

    # Programming Languages - Common Packages
    go
    gcc
    rustup
    python3
    python311Packages.pip
    python311Packages.pandas
    nodejs_22

    # GUI only packages
] ++ (if isGui then [
    firefox
    google-chrome
    alacritty
    libnotify
    glib
    dconf
    cura
] else [])
