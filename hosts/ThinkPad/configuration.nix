{ config, pkgs, ... }:

{ 
  
  imports = [
    ../../common
    ../../desktop
    ../../programs
    ../../services
    ../../shells
    ./hardware-configuration.nix
    ./networking.nix
    ./users/felix.nix
  ];

  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  programs.firefox.enable = true;

  programs.localsend.enable = true;

  programs.steam.enable = true;

  environment.systemPackages = with pkgs; [
	pkgs.winboat
        pkgs.kitty
        pkgs.brave
        pkgs.zsh
        pkgs.prismlauncher
        pkgs.fastfetch
        pkgs.zsh-powerlevel10k
        pkgs.neovim
        pkgs.elegant-sddm
        pkgs.quickshell
        pkgs.noctalia-shell
        pkgs.spotify
        pkgs.ghostty
        pkgs.tree
        eza
  ];

  system.stateVersion = "25.11"; # Did you read the comment?

}
