{ pkgs, lib, config, ... }:
{

  services.postgresql = {
    enable = true;
    package = pkgs.postgresql95;
    extraPlugins = [ (pkgs.postgis.override { postgresql = pkgs.postgresql95; }).v_2_3_1 ];
    authentication = lib.mkForce ''
      host all all localhost trust
    '';
  };
  services.redis = {
    enable = true;
  };

}
