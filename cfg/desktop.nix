{ config, lib, pkgs, ... }:

{
  services = {
    xserver = {
      enable = true;
      displayManager.sddm.enable = true;
      desktopManager.plasma5.enable = true;
    };
  };

  environment.systemPackages = with pkgs; [
    kdeApplications.ark
    kdeApplications.gwenview
    kdeApplications.okular
  ];
}
