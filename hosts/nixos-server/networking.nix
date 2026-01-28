{ config, pkgs, ... }:
{
    networking = {
        hostName = "nixos-server";
        hosts = {};
        wireless.enable = false;
        firewall = {
            enable = true;
            allowedTCPPorts = [ ];
            allowedUDPPorts = [ ];
            allowedTCPPortRanges = [ ];
            allowedUDPPortRanges = [ ];
        };
    };
}
