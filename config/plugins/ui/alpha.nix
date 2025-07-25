{ lib, headers, ... }:
let
  helpers = lib.nixvim;
in
{
  plugins.alpha = {
    enable = true;
    layout =
      let
        padding = val: {
          type = "padding";
          inherit val;
        };
      in
      [
        (padding 4)
        {
          opts = {
            hl = "AlphaHeader";
            position = "center";
          };
          type = "text";
          val = headers.velo;
        }
        (padding 6)
        {
          type = "button";
          val = "  Find File";
          on_press.__raw = "function() Snacks.picker.files() end";
          opts = {
            keymap = [
              "n"
              "f"
              (helpers.mkRaw "function() Snacks.picker.files() end")
              {
                noremap = true;
                silent = true;
                nowait = true;
              }
            ];
            shortcut = "f";
            position = "center";
            cursor = 3;
            width = 40;
            align_shortcut = "right";
            hl_shortcut = "Keyword";
          };
        }
        (padding 1)
        {
          type = "button";
          val = "  New File";
          on_press.__raw = "function() vim.cmd[[ene]] end";
          opts = {
            keymap = [
              "n"
              "n"
              ":ene <BAR> startinsert <CR>"
              {
                noremap = true;
                silent = true;
                nowait = true;
              }
            ];
            shortcut = "n";

            position = "center";
            cursor = 3;
            width = 40;
            align_shortcut = "right";
            hl_shortcut = "Keyword";
          };
        }
        (padding 1)
        {
          type = "button";
          val = "󰈚  Recent Files";
          on_press.__raw = "function() Snacks.picker.recent() end";
          opts = {
            keymap = [
              "n"
              "r"
              (helpers.mkRaw "function() Snacks.picker.recent() end")
              {
                noremap = true;
                silent = true;
                nowait = true;
              }
            ];
            shortcut = "r";

            position = "center";
            cursor = 3;
            width = 40;
            align_shortcut = "right";
            hl_shortcut = "Keyword";
          };
        }
        (padding 1)
        {
          type = "button";
          val = "󰈭  Find Word";
          on_press.__raw = "function() Snacks.picker.grep() end";
          opts = {
            keymap = [
              "n"
              "g"
              (helpers.mkRaw "function() Snacks.picker.grep() end")
              {
                noremap = true;
                silent = true;
                nowait = true;
              }
            ];
            shortcut = "g";

            position = "center";
            cursor = 3;
            width = 40;
            align_shortcut = "right";
            hl_shortcut = "Keyword";
          };
        }
        (padding 1)
        {
          type = "button";
          val = "  Quit Neovim";
          on_press.__raw = "function() vim.cmd[[qa]] end";
          opts = {
            keymap = [
              "n"
              "q"
              ":qa<CR>"
              {
                noremap = true;
                silent = true;
                nowait = true;
              }
            ];
            shortcut = "q";

            position = "center";
            cursor = 3;
            width = 40;
            align_shortcut = "right";
            hl_shortcut = "Keyword";
          };
        }
      ];
  };
}
