{ lib, ... }:
let
  helpers = lib.nixvim;
in
{
  plugins.conform-nvim = {
    enable = true;
    settings = {
      format_on_save = {
        lspFallback = true;
        timeoutMs = 500;
      };
    };
  };

  keymaps = [
    {
      mode = [
        "n"
        "v"
      ];
      key = "<leader>cf";
      action = helpers.mkRaw "function() require('conform').format({ async = true }) end";
      options = {
        silent = true;
        desc = "Format";
      };
    }
  ];
}
