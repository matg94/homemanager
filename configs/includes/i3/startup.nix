[
    {
        command = "feh --bg-scale .config/wallpapers/$(ls .config/wallpapers | shuf -n 1)";
        always = true;
    }
    {
        command = "systemctl --user restart polybar.service";
        always = true;
    }
]