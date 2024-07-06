{pkgs, isGui}:
{
	enable = isGui;
	package = pkgs.polybarFull;
    script = ''
     	polybar --reload main &
	    polybar --reload secondary &
     '';
}