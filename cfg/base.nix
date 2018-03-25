{ config, pkgs, ... }:
{

  nix.package = pkgs.nixStable2;

  imports = [
    ../hardware-configuration.nix
    ./keyboard.nix
    ./mouse.nix
    ./scm.nix
    ./time.nix
    ./langs/c.nix
    ./langs/ocaml.nix
    ./desktop.nix
    ./users.nix
    ./web.nix
    ./bluetooth.nix
    ./databases.nix
    ./fonts.nix
    ./virtualisation.nix
    ./productivity.nix
  ];

}
