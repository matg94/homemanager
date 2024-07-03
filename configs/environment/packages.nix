{ pkgs, isGui }:

with pkgs;

[
    # Common Packages
    cowsay

    # GUI only packages
] ++ (if isGui then [
    firefox
] else [])
