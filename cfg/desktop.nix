{ config, lib, pkgs, ... }:

{
  services.xserver = {
    enable = true;
    windowManager.xmonad.enable = true;
    windowManager.default = "xmonad";
    desktopManager.xterm.enable = true;
    desktopManager.default = "none";
    displayManager = {
      slim = {
	      enable = true;
	      defaultUser = "bruce";
      };
    };
  };

  environment.systemPackages = with pkgs; [
    haskellPackages.xmobar
    haskellPackages.xmonad
    haskellPackages.xmonad-contrib
    haskellPackages.xmonad-extras
  ];
}
