{ pkgs, config, ... }:
{

  virtualisation.docker.enable = true;

  environment.sytemPackages = with pkgs; [
    docker_compose
  ];

}
