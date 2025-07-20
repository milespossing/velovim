{ nixvim }:
{
  config,
  lib,
  ...
}:
let
  cfg = config.velovim;
in
{
  imports = [ nixvim.homeModules.default ];
  options.velovim = {
    enable = lib.mkEnableOption "Enable velovim";
  };
  config = lib.mkIf cfg.enable {
    programs.nixvim = {
      enable = true;
      imports = [ ../config ];
    };
  };
}
