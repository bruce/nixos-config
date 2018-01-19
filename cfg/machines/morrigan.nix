{ config, pkgs, ... }:
{
  imports = [
    ../base.nix
    ./morrigan/boot.nix
    ./morrigan/networking.nix
    ./morrigan/version.nix
  ];
}
