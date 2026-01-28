{ config, pkgs, ... }:

{
	home = {
		username = "felix";
		homeDirectory = "/home/felix";
		stateVersion = "25.05";
		enableNixpkgsReleaseCheck = false;
		packages =  with pkgs; [
			vscode
		];
	};
}