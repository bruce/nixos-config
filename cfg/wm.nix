{ config, pkgs, ... }:
{

  services.xserver = {
    enable = true;
    windowManager.xmonad.enable = true;
    windowManager.default = "xmonad";
    desktopManager.xterm.enable = false;
    desktopManager.default = "none";
    # displayManager = {
    #   slim = {
	  #     enable = true;
	  #     defaultUser = "demo";
    #   };
    # };
  };

  environment.systemPackages = with pkgs; [
    # Xmonad
    haskellPackages.xmobar
    haskellPackages.xmonad
    haskellPackages.xmonad-contrib
    haskellPackages.xmonad-extras
    # System Tray
    trayer
    # Application Launcher
    dmenu
  ];
}
