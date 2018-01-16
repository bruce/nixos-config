{ config, pkgs, ... }:
{
  imports = [
    ../hardware-configuration.nix
    ./keyboard.nix
    ./editor.nix
    ./scm.nix
    ./time.nix
  ];

}
