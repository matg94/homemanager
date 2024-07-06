useGUI:
rec {
    modifier = "Mod4";
    bars = [ ]; # Use Polybar Instead
    gaps = {
        inner = 8;
        outer = 4;
        smartGaps = false;
        smartBorders = "off";
    };
    window = {
        border = 2;
        titlebar = false;
    };
    startup = import ./startup.nix;
    workspaceOutputAssign = import ./workspaces.nix;
    focus.followMouse = false;
    keybindings = import ./keybindings.nix modifier;
}