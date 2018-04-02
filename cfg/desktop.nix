{ config, lib, pkgs, ... }:

{

  hardware.pulseaudio.enable = true;

  services.xserver = {
    enable = true;
    # home-manager xsession handles windowManager
    desktopManager.default = "none";
    displayManager = {
      slim = {
        enable = true;
        defaultUser = "bruce";
      };
#      sessionCommands = ''
#        xcompmgr -c &
#      '';
    };
  };


  environment.systemPackages = with pkgs; [
    rxvt_unicode
    dmenu
    xcompmgr
    feh
    xlibs.xbacklight
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
