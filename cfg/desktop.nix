{ config, lib, pkgs, ... }:

{

 services.xserver = {
    enable = true;
    windowManager.i3 = {
      enable = true;
    };
    windowManager.default = "i3";
    desktopManager.xterm.enable = true;
    desktopManager.default = "none";
    displayManager = {
      lightdm.enable = true;
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
