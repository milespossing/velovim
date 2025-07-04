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
      settings =
        let
          flake = builtins.getFlake (toString ../../..);
          system = builtins.currentSystem;
        in
        {
          formatting = {
            command = [ "${lib.getExe pkgs.nixfmt-rfc-style}" ];
          };
          nixpkgs.expr = "import ${flake.inputs.nixpkgs} { }";
          options = {
            nixvim.expr = ''${flake.packages.${system}.nvim.options}'';
          };
        };
    };
  };
}
