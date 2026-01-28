{ config, pkgs, ... }:
{
    programs.zsh = {
        enable = true;
        promptInit = "source ${pkgs.zsh-powerlevel10k}/share/zsh-powerlevel10k/powerlevel10k.zsh-theme";
        autosuggestions.enable = true;
        syntaxHighlighting.enable = true;
        shellAliases = {
            nixrb = "sudo nixos-rebuild switch --flake /etc/nixos#ThinkPad";
            nixcfg = "sudo nvim /etc/nixos/";
            homecfg = "sudo nvim /etc/nixos/hosts/ThinkPad/home.nix";
            flakecfg = "sudo nvim /etc/nixos/flake.nix";
            work = "nix-shell /home/felix/Shells/Networking/networking.nix";
            webs = "nix-shell /home/felix/Shells/Networking/webserver.nix";
            vpnup = "sudo openvpn --config /home/felix/Downloads/VPNs/pfSense-UDP4-1194-f.busch-config.ovpn";
            ns = "nix-shell -p";
        };
    };
    programs.zsh.ohMyZsh = {
        enable = true;
        plugins = [ 
            "git" 
            "sudo" 
            "docker" 
            "colorize" 
            "tmux" 
        ];
    # theme = "powerlevel10k/powerlevel10k";
  };
}
