{ config, pkgs, ... }:
{
  # Bruce
  users.extraUsers.bruce = {
    createHome = true;
    home = "/home/bruce";
    description = "Bruce Williams";
    extraGroups = [ "wheel" "disk" "vboxusers" "cdrom" ];
    isSystemUser = false;
    useDefaultShell = true;
  };
  # Security
  security.sudo.enable = true;
}
