{ pkgs, config, ... }:
{
  hardware.bluetooth.enable = true;
  environment.systemPackages = with pkgs; [
    blueman
  ];
}
