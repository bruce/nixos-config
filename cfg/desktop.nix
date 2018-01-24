{ config, lib, pkgs, ... }:

{
  services.xserver = {
    enable = true;
    windowManager.xmonad = {
      enable = true;
      enableContribAndExtras = true;
    };
    windowManager.default = "xmonad";
    desktopManager.xterm.enable = true;
    desktopManager.default = "none";
    displayManager = {
      slim = {
	      enable = true;
	      defaultUser = "bruce";
      };
      sessionCommands = ''
        xcompmgr -c &
      '';
    };
  };

  environment.systemPackages = with pkgs; [
    rxvt_unicode
    dmenu
    trayer
    xcompmgr
    feh
    haskellPackages.xmobar
  ];

  systemd.user.services."urxvtd" = {
    enable = true;
    description = "rxvt unicode daemon";
    wantedBy = [ "default.target" ];
    path = [ pkgs.rxvt_unicode ];
    serviceConfig.Restart = "always";
    serviceConfig.RestartSec = 2;
    serviceConfig.ExecStart = "${pkgs.rxvt_unicode}/bin/urxvtd -q -o";
  };

}
