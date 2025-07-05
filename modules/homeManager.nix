{
  nixvim,
  pkgs,
  ...
}:
{
  config,
  lib,
  ...
}:
let
  cfg = config.velovim;
  icons = import ../lib/icons;
in
{
  options.velovim = {
    enable = lib.mkEnableOption "Enable velovim";
  };
  config = lib.mkIf cfg.enable {
    imports = [
      (nixvim.homeModules.default {
        inherit pkgs;
        module = import ../config;
        extraSpecialArgs = {
          inherit pkgs icons;
        };
      })
    ];
    programs.nixvim.enable = true;
  };
}
