{ config, pkgs, ... }:
{

  nixpkgs.config.allowUnfree = true;

  imports = [
    ../base.nix
    ./morrigan/boot.nix
    ./morrigan/networking.nix
    ./morrigan/version.nix
  ];
}
