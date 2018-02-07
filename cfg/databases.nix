{ pkgs, lib, config, ... }:
{

  services.postgresql = {
    enable = true;
    package = pkgs.postgresql95;
    extraPlugins = [ (pkgs.postgis.override { postgresql = pkgs.postgresql95; }).v_2_3_1 ];
  };
  services.redis = {
    enable = true;
  };

}
