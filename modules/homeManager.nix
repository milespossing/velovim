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
  config = lib.mkIf cfg.enable { };
}
