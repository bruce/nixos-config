{ config, pkgs, ... }:
{

  services.xserver = {
    enable = true;
    layout = "us";
    windowManager.xmonad.enable = true;
    windowManager.default = "xmonad";
    desktopManager.xterm.enable = false;
    desktopManager.default = "none";
    displayManager = {
      slim = {
	      enable = true;
	      defaultUser = "demo";
      };
    };
  };

  environment.systemPackages = with pkgs; [
    # Window Manager

    # System Tray
    trayer
    # Application Launcher
    dmenu
  ];
}
