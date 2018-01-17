{ config, pkgs, ... }:
{
  imports = [
    ../hardware-configuration.nix
    ./keyboard.nix
    ./editor.nix
    ./scm.nix
    ./time.nix
    ./langs/c.nix
    ./langs/haskell.nix
    # ./wm.nix
    ./users.nix
  ];

}
