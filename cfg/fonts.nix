{ pkgs, config, ... }:
{

  fonts.fonts = with pkgs; [
    font-awesome-ttf
    noto-fonts
    material-icons
    terminus_font
    terminus_font_ttf
    source-code-pro
    siji
  ];

  environment.systemPackages = with pkgs; [
    gnome3.gucharmap
  ];

}
