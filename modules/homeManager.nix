{ nvim }:
{
  config,
  lib,
  ...
}:
let
  cfg = config.velovim;
in
{
  options.velovim = {
    enable = lib.mkEnableOption "Enable velovim";
  };
  config = lib.mkIf cfg.enable {
    home.packages = [ nvim ];
  };
}
