{ config, lib, pkgs, ... }:


let
	name = "mat";
	email = "mat.gautron@gmail.com";
	font = "JetBrainsMono Nerd Font";
	isGui = true;
in
{

    nixpkgs.config.allowUnfree = true;
    programs = {
        alacritty = (import ./includes/alacritty-gruv.nix) isGui;
        zsh = (import ./includes/zsh.nix);
        git = (import ./includes/git.nix) {inherit name email; };
        rofi = (import ./includes/rofi.nix) {inherit isGui font; };
    };

    services = {
        dunst = (import ./includes/dunst.nix) {inherit pkgs isGui font; };
        polybar = (import ./includes/polybar.nix) {inherit pkgs isGui; };
    };

    xsession = (import ./includes/xsession-i3.nix) {inherit pkgs isGui; };

    home = {
        username = "${name}";
        homeDirectory = "/home/${name}";
        stateVersion = "23.11";

        pointerCursor = (import ./includes/cursor.nix) {inherit pkgs isGui; };
        sessionVariables = import ./environment/session-variables.nix;
        packages = import ./environment/packages.nix {inherit pkgs isGui; };

#        file = import ./files/links.nix;
        file = {
    ".config/polybar/config.ini".source = ./files/polybar/config.ini;
    ".config/rofi/launcher.rasi".source = ./files/rofi/launcher.rasi;
    ".config/rofi/colors.rasi".source = ./files/rofi/colors.rasi;
        };
    };

    xresources.extraConfig = "Xft.dpi: 192";
    programs.home-manager.enable = true;
}