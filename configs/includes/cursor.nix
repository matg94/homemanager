{pkgs, isGui}:
{
    x11.enable = isGui;
    name = "Vanilla-DMZ";
    package = pkgs.vanilla-dmz;
    size = 128;
}