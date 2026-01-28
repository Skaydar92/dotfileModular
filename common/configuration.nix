{ config, pkgs, ... }:

{
    networking = {
        networkmanager = {
            enable = true;
            wifi.powersave = false;
        };
    };

    hardware.bluetooth = {
        enable = true;
        powerOnBoot = true;
        settings = {
            General = {
                Experimental = true;
                FastConnectable = true;
            };
        };
    };

    services.pulseaudio.enable = false;
    security.rtkit.enable = true;
    services.pipewire = {
        enable = true;
        alsa.enable = true;
        alsa.support32Bit = true;
        pulse.enable = true;
    };

    nixpkgs.config.allowUnfree = true;

    nix.settings.experimental-features = [ "nix-command" "flakes" ];

    environment.systemPackages = with pkgs; [
        pkgs.bat
        pkgs.git
        pkgs.gh
        pkgs.zsh
        vim
    ];
}
