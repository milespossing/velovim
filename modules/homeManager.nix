{ nixvim }:
{
  config,
  lib,
  ...
}:
let
  cfg = config.programs.nixvim;
in
{
  imports = [ nixvim.homeModules.default ];
  config.programs.nixvim = lib.mkIf cfg.enable import ../config;
}
