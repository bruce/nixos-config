{ config, pkgs, ... }:
{
  services.xserver.libinput = {
    enable = true;
    naturalScrolling = true;
  };
}
