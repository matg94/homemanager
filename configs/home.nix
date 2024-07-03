{ config, lib, pkgs, ... }:


let
	name = "mat";
	email = "mat.gautron@gmail.com";
	font = "JetBrainsMono Nerd Font";
	isGui = true;
in
{

    programs = {
        alacritty = (import ./includes/alacritty-gruv.nix) isGui;
        zsh = (import ./includes/zsh.nix);
        git = {
            enable = true;
            userName = "${name}";
            userEmail = "${email}";
        };
    };

    home = {
        username = "${name}";
        homeDirectory = "/home/${name}";
        stateVersion = "23.11";

        sessionVariables = import ./environment/session-variables.nix;
        packages = import ./environment/packages.nix {inherit pkgs isGui; };
    };

    programs.home-manager.enable = true;
}