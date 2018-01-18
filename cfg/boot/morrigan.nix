{ config, pkgs, ... }:
{
  boot.loader.systemd-boot.enable = true;
  boot.efi.canTouchEfiVariables = true;
}
