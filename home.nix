{ config, lib, pkgs, ... }:


let
	name = "mat";
	email = "mat.gautron@gmail.com";
	font = "JetBrainsMono Nerd Font";
in
{
    home.username = "${name}";
    home.homeDirectory = "/home/${name}";
    home.stateVersion = "23.11"; # Please read the comment before changing.

    # Setting up git
    programs.git = {
        enable = true;
        userName = "${name}";
        userEmail = "${email}";
    };

    programs.zsh = {
        enable = true;
        enableCompletion = true;
        syntaxHighlighting.enable = true;
        shellAliases = {
            cat = "bat";
        };
        oh-my-zsh = {
            enable = true;
            theme = "arrow";
        };
        history.size = 10000;
    };

    programs.alacritty = {
        enable = true;
        settings = {
            env = {
                TERM = "xterm-256color";
            };
            font = {
                size = 15;
            };
            window.padding = {
                x = 20;
                y = 20;
            };
            window.opacity = 0.9;
            colors = import ./colors.nix;
        };
    };

    home.sessionVariables = {
        EDITOR = "nvim";
        KUBECONFIG = "$HOME/.kube/kubeconfig.yaml";
    };

    home.packages = with pkgs; [
        # Base Utilities
        alacritty
        neovim

        # CLI Utilities
        bat
        jq
        zip
        unzip
        kubectl
        dnsutils

        # Programming
        go
        gcc
        rustup
        python3
        python311Packages.pip
        jdk21
        nodejs_21
    ];

    programs.home-manager.enable = true;
}