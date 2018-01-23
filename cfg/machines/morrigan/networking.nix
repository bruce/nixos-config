{ config, pkgs, ... }:
{
  networking.hostName = "morrigan";
  networking.networkmanager.enable = true;

  environment.systemPackages = with pkgs; [
    wirelesstools
  ];
}
