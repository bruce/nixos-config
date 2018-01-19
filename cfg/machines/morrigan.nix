{ config, pkgs, ... }:
{
  imports = [
    ../cfg/base.nix
    ./morrigan/boot.nix
    ./morrigan/networking.nix
    ./morrigan/version.nix
  ];
}
