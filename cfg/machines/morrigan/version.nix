{ config, pkgs, ... }:
{
  system.stateVersion = "17.09";
  nix.package = pkgs.nixStable2;
}
