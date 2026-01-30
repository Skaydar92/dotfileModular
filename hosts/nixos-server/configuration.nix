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

  services.qemuGuest.enable = true;

  networking = {
    firewall.enable = false;
    hostName = "nixos-server";
  };

  services.static-web-server = {
    enable = true;
    root = "/opt/webserver/";
    configuration = {
      general = {
        directory-listing = true;
      };
    };
  };

  environment.systemPackages = map lib.lowPrio [
    pkgs.curl
    pkgs.gitMinimal
    pkgs.vim
  ];

  users.users.root.openssh.authorizedKeys.keys = [
    "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIJ7CNg80kTLQ8RdqVt/UT7No3qy4qaejHfWjx08qgSI4 felix@ThinkPad"
  ];

  nix.settings.experimental-features = ["nix-command" "flakes"];

  system.stateVersion = "24.05";
}
