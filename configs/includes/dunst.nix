{pkgs, isGui, font}:
{
  	enable = isGui;
  	iconTheme = {
		name = "GruvBoxPlus";
		package = pkgs.gruvbox-dark-icons-gtk;
	};
	settings = {
		global = {
			width = 500;
			height = 300;
			origin = "top-center";
			transparency = 8;
			frame_color = "#83a598";
			font = "${font} 12";
			corner_radius = 5;
			padding = 10;
			text_icon_padding = 10;
			gap_size = 10;
			background = "#282828";
			foreground = "#ebdbb2";
			timeout = 10;
		};
		urgency_critical = {
			frame_color = "#fb4934";
			timeout = 0;
		};
    };
}
