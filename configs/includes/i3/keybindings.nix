mod:
{
	# Quick access to apps
	"${mod}+Return" = "exec alacritty";
	"${mod}+space" = "exec rofi -show drun";

	# Window Management
	"${mod}+q" = "kill";
	"${mod}+f" = "fullscreen";

	# Focus Windows
	"${mod}+h" = "focus left";
	"${mod}+j" = "focus down";
	"${mod}+k" = "focus up";
	"${mod}+l" = "focus right";

	# Move Windows
	"${mod}+Shift+h" = "move left";
	"${mod}+Shift+j" = "move down";
	"${mod}+Shift+k" = "move up";
	"${mod}+Shift+l" = "move right";

	# Work spaces
	"${mod}+1" = "workspace 1";
	"${mod}+2" = "workspace 2";
	"${mod}+3" = "workspace 3";
	"${mod}+4" = "workspace 4";
	"${mod}+5" = "workspace 5";
	"${mod}+6" = "workspace 6";
	"${mod}+7" = "workspace 7";
	"${mod}+8" = "workspace 8";
	"${mod}+9" = "workspace 9";
	"${mod}+0" = "workspace 10";

	"${mod}+Shift+1" = "move container to workspace 1";
	"${mod}+Shift+2" = "move container to workspace 2";
	"${mod}+Shift+3" = "move container to workspace 3";
	"${mod}+Shift+4" = "move container to workspace 4";
	"${mod}+Shift+5" = "move container to workspace 5";
	"${mod}+Shift+6" = "move container to workspace 6";
	"${mod}+Shift+7" = "move container to workspace 7";
	"${mod}+Shift+8" = "move container to workspace 8";
	"${mod}+Shift+9" = "move container to workspace 9";
	"${mod}+Shift+0" = "move container to workspace 10";
	
	# I3 Management
	"${mod}+Shift+r" = "restart";
	"${mod}+Shift+e" = "exec \"i3-nagbar -t warning -m 'You pressed the exit shortcut. Do you really want to exit i3? This will end your X session.' -b 'Yes, exit i3' 'i3-msg exit'\"";

}
