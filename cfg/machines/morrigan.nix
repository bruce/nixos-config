{ config, pkgs, ... }:
{

  nix.package = pkgs.nixStable2;

  nixpkgs.config.allowUnfree = true;

  imports = [
    ../base.nix
    ./morrigan/boot.nix
    ./morrigan/networking.nix
    ./morrigan/version.nix
  ];
}
