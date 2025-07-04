{ config, lib, pkgs, ... }:
let
  flake = builtins.getFlake (toString ../.);
in
{
  imports = [
    flake.inputs.nixvim.nixosModules.nixvim
    ../config
  ];

  programs.nixvim.enable = lib.mkDefault true;
}
