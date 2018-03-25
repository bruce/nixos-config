{ config, pkgs, ... }:
{
  system.stateVersion = "17.09";

  environment.systemPackages = with pkgs; [
    nixStable2
  ];

  nix.package = pkgs.nixStable2;

}
