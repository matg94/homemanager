isGui:
{
    enable = isGui;
	settings = {
	    env = {
	        TERM = "xterm-256color";
	    };
		font = {
			size = 18;
		};
		window.padding = {
			x = 20;
			y = 20;
		};
		window.opacity = 0.92;
		colors = { # Gruvbox
            primary = {
                background =  "0x282828";
                foreground =  "0xebdbb2";
            };
            bright = {
                black =    "0x32302f";
                red =      "0xfb4934";
                green =    "0xb8bb26";
                yellow =   "0xfabd2f";
                blue =     "0x83a598";
                magenta =  "0xd3869b";
                cyan =     "0x8ec07c";
                white =    "0xfbf1c7";
            };

            normal = {
                black =    "0x1d2021";
                red =      "0xcc241d";
                green =    "0x98971a";
                yellow =   "0xd79921";
                blue =     "0x458588";
                magenta =  "0xb16286";
                cyan =     "0x689d6a";
                white =    "0xebdbb2";
            };
        };
	};
}
