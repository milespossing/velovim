{ pkgs, ... }:
{
  plugins = {
    conjure = {
      enable = true;
    };
    blink-cmp.settings.sources = {
      default = [ "conjure" ];
      providers.conjure = {
        name = "conjure";
        module = "blink.compat.source";
      };
    };
  };

  extraPlugins = with pkgs; [
    vimPlugins.cmp-conjure
  ];
}
