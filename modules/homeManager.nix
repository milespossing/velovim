{
  config,
  lib,
  ...
}:
let
  inputs = config._module.args.inputs;
  cfg = config.programs.nixvim;
in
{
  imports = [ inputs.nixvim.homeModules.nixvim ];
  config = lib.mkIf cfg.enable { };
}
