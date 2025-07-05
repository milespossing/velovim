{ pkgs, lib, ... }:
{
  plugins = {
    nix.enable = true;
    nix-develop.enable = true;

    conform-nvim.settings = {
      formatters_by_ft = {
        nix = [ "nixfmt" ];
      };

      formatters = {
        nixfmt.command = lib.getExe pkgs.nixfmt-rfc-style;
      };
    };

    lsp.servers.nixd = {
      enable = true;
      settings = {
        formatting = {
          command = [ "${lib.getExe pkgs.nixfmt-rfc-style}" ];
        };
        nixpkgs.expr = "import <nixpkgs> { }";
      };
    };
  };
}
