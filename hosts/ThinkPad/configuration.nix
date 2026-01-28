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
	      winboat
        kitty
        brave
        zsh
        prismlauncher
        fastfetch
        zsh-powerlevel10k
        neovim
        elegant-sddm
        quickshell
        noctalia-shell
        spotify
        ghostty
        tree
        eza
  ];

  system.stateVersion = "25.11";
}
