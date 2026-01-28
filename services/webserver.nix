{ config, pkgs, ... }:
{
    services.static-web-server = {
        enable = true;
        root = "~/Webserver/";
        configuration = {
            general = {
                directory-listing = true;
            };
        };
    };
}