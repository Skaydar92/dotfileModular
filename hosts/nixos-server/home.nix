{ config, pkgs, ... }:

{
  home = {
    username = "felix";
    homeDirectory = "/home/felix";
    enableNixpkgsReleaseCheck = false;
    packages = with pkgs; [
    ];

    programs = {
      git.enable = true;
    }
  }
}