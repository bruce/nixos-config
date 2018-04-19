{ config, pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    dotnet-sdk-2.0.3
  ];
}
