{ pkgs, config, ... }:
{

  virtualisation.docker.enable = true;

  environment.systemPackages = with pkgs; [
    docker_compose
  ];

}
