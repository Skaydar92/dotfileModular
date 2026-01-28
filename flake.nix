{
  description = "NixOS System Configuration";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
    home-manager = {
      url = "github:nix-community/home-manager/release-25.11";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    nvf.url = "github:notashelf/nvf";
    plasma-manager = {
      url = "github:nix-community/plasma-manager";
      inputs.nixpkgs.follows = "nixpkgs";
      inputs.home-manager.follows = "home-manager";
    }
  };

  outputs = { self, nixpkgs, home-manager, plasma-manager, nvf }: {
    nixosConfigurations = {
      ThinkPad = nixpkgs.lib.nixosSystem {
        system = "x86_64-linux";
        modules = [
          ./hosts/ThinkPad/configuration.nix
          nvf.nixosModules.default
          home-manager.nixosModules.home-manager
          {
            home-manager = {
              useGlobalPkgs = true;
              useUserPackages = true;
              users.felix = import ./hosts/ThinkPad/home.nix;
              backupFileExtension = "backup";

              home-manager.sharedModules = [ plasma-manager.homeModules.plasma-manager ];
            };
          }
        ];
      };
    };
  };
}
