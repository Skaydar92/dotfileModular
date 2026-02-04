{ config, pkgs, ... }:

{
    users.users.felix = {
        shell = pkgs.zsh;
        initialPassword = "1Admin?";
        isNormalUser = true;
        home = "/home/felix";
        description = "Felix Busch";
        extraGroups = ["networkmanager" "wheel" "docker" ];
        packages = with pkgs; [
            zsh-powerlevel10k
        ];
        openssh.authorizedKeys.keys = [
            "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIIA7gH8vMtai+zlyTNu1tL1FRUPeTOe0PzIvG20ApET9"
            "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIKpiBvYS+FWDZkpGN68JeAb2fS4rnxEpTLPqooms/8x2"
            "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIKw21l0YaO0nS3LX9494bs/x7qHcvbIAAx9/JEK1tdgu"
            "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIN/qO9JN+j1chgzOo4ihmTHZdmyVk+vPElTLsqk5P1/7"
            "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIFWVH+vtWyqA6QWA4XF/Po6Vl2jzUfuoPO6qwTpxbtZl"
            "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIJ7CNg80kTLQ8RdqVt/UT7No3qy4qaejHfWjx08qgSI4"
        ];
    };
}
