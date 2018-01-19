{ config, pkgs, ... }:
{

  # TTY settings
  i18n = {
    consoleKeyMap = "dvorak";
  };

  # GUI
  services.xserver.layout = "us";
  services.xserver.xkbVariant = "dvorak";
  # Convert Caps Lock to Ctrl
  services.xserver.xkbOptions = "ctrl:nocaps";

}
