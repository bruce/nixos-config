{ config, pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    # Base
    haskellPackages.haskellPlatform
    # Xmonad
    haskellPackages.xmobar
    haskellPackages.xmonad
    haskellPackages.xmonadContrib
    haskellPackages.xmonadExtras
  ];
}
