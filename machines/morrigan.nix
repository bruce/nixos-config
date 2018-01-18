{ config, pkgs, ... }:
{
  imports = [
    ../cfg/base.nix
    ../cfg/boot/morrigan.nix
    ../cfg/networking/morrigan.nix
    ../cfg/version/morrigan.nix
  ];
}
