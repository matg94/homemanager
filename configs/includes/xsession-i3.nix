{pkgs, isGui}:
{
    enable = isGui;
    windowManager.i3 = rec {
        enable = isGui;
        package = pkgs.i3-gaps;
        config = import ./i3/config.nix;
    };
}