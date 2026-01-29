{
  modulesPath,
  lib,
  pkgs,
  ...
} @ args:
{
  imports = [
    ./disk-config.nix
  ];
  boot.loader.grub = {
    efiSupport = true;
    efiInstallAsRemovable = true;
  };
  services.openssh.enable = true;

  environment.systemPackages = map lib.lowPrio [
    pkgs.curl
    pkgs.gitMinimal
    pkgs.vim
  ];

  users.users.root.openssh.authorizedKeys.keys = [
    "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIJ7CNg80kTLQ8RdqVt/UT7No3qy4qaejHfWjx08qgSI4 felix@ThinkPad"
  ];

  system.stateVersion = "24.05";
}