# nixos-config

NixOS configuration for my machines.

(Idea: bjornfor/nixos-config)

## Installation:

``` shell
sudo mv /etc/nixos /etc/nixos.bak
sudo git clone https://github.com/bruce/nixos-config /etc/nixos
sudo cp /etc/nixos.bak/hardware-configuration.nix /etc/nixos/
sudo ln -sr /etc/nixos/cfg/machines/$MACHINE.nix /etc/nixos/configuration.nix
```
