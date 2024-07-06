# Installing Home manager & Nix in non NixOS Distros

## Installing Nix Package Manager
Do so as a user, not as root. 
That is what caused weird failures for me.

`sh <(curl -L https://nixos.org/nix/install) --daemon`

* Enter a nix shell with git `nix-shell -p git`
* Clone this repo to the machine `git clone https://github.com/matg94/homemanager.git`
* Edit the required variables in home.nix `nano homemanager/configs/home.nix`
* Enable nix flakes by adding to nix conf `sudo nano /etc/nix/nix.conf` and add 
`experimental-features = nix-command flakes`to it
* Switch to home manager configs `home-manager switch --flake homemanager/configs`
* Set default shell as zsh `sudo chsh -s $(which zsh) $(whoami)`
