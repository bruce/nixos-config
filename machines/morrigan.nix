{ config, pkgs, ... }:
{
  imports = [
    # Change to ../cfg/base.nix when on the machine
    ../cfg/base-virtualbox.nix
  ];
}
