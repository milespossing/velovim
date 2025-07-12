{ pkgs, lib, ... }:
{
  plugins = {
    conjure = {
      enable = true;
    };
    conform-nvim.settings = {
      formatters_by_ft = {
        clojure = [ "cljfmt" ];
      };

      formatters.cljfmt = {
        command = lib.getExe pkgs.cljfmt;
      };
    };
    blink-cmp.settings.sources.providers.conjure = {
      name = "conjure";
      module = "blink.compat.source";
    };
  };

  extraPackages = with pkgs; [
    clojure-lsp
    clj-kondo
  ];

  extraPlugins = with pkgs; [
    vimPlugins.cmp-conjure
  ];
}
