{ config, pkgs, ... }:
{
    networking = {
        hostName = "ThinkPad";
        hosts = {};
        wireless.enable = true;
        firewall = {
            enable = true;
            allowedTCPPorts = [ 8787 11111 ];
            allowedUDPPorts = [ ];
            allowedTCPPortRanges = [
                { from = 1714; to = 1764; } # KDE Connect
            ];
            allowedUDPPortRanges = [
                { from = 1714; to = 1764; } # KDE Connect
            ];
        };
    };
}
