{ config, pkgs, ... }:
{
  environment = {

    systemPackages = with pkgs; [
      emacs
    ];

    variables.EDITOR = "emacs";

  };

}
