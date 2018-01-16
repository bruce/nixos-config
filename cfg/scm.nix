{ config, pkgs, ... }:
{
  systemPackages = with pkgs; [
    git
  ]
}
