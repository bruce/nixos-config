{ pkgs, lib, config, ... }:
{

  services.postgresql = {
    enable = true;
    package = pkgs.postgresql95;
    extraPlugins = [ (pkgs.postgis.override { postgresql = pkgs.postgresql95; }).v_2_3_1 ];
    authentication = lib.mkForce ''
      # Generated file; do not edit!
      local all all              ident sameuser
      host  all all localhost    trust
      host  all all 127.0.0.1/32 md5
      host  all all ::1/128      md5
    '';
  };
  services.redis = {
    enable = true;
  };

}
