{ config, pkgs, ... }:
{

  imports = [
    ../hardware-configuration.nix
    ./shell.nix
    ./keyboard.nix
    ./mouse.nix
    ./scm.nix
    ./time.nix
    ./langs/c.nix
    ./langs/ocaml.nix
    ./langs/dotnet.nix
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
