{ config, pkgs, ... }:
{
    fonts.packages = with pkgs; [
        nerd-fonts.hurmit
        nerd-fonts.jetbrains-mono
    ]; 
}