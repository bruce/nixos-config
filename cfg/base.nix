{ config, pkgs, ... }:
{
  imports = [
    ../hardware-configuration.nix
    ./keyboard.nix
    ./mouse.nix
    ./editor.nix
    ./scm.nix
    ./time.nix
    ./langs/c.nix
    ./desktop.nix
    ./users.nix
  ];

}
