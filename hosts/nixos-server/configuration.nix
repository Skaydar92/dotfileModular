{ config, pkgs, ... }:

{
  imports = [
    ../../services/docker.nix
    ../../shells/zsh.nix
  ];

  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  environment.systemPackages = with pkgs; [
    vim
    zsh
    fastfetch
  ]
}