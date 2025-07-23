{ lib, ... }:
let
  helpers = lib.nixvim;
in
{
  plugins.snacks = {
    enable = true;
    settings.picker.enabled = true;
  };
  keymaps = [
    {
      key = "<leader>ff";
      mode = [ "n" ];
      action = helpers.mkRaw "function() Snacks.files() end";
      options.desc = "Find Files";
    }
    {
      key = "<leader>,";
      mode = [ "n" ];
      action = helpers.mkRaw "function() Snacks.buffers() end";
      options.desc = "Buffers";
    }
    {
      key = "<leader>fr";
      mode = [ "n" ];
      action = helpers.mkRaw "function() Snacks.recent() end";
      options.desc = "Recent";
    }

    {
      key = "<leader>sg";
      mode = [ "n" ];
      action = helpers.mkRaw "function() Snacks.grep() end";
      options.desc = "Live Grep";
    }

    {
      key = "<leader>hk";
      mode = [ "n" ];
      action = helpers.mkRaw "function() Snacks.keymaps() end";
      options.desc = "Keymaps";
    }
    {
      key = "<leader>hC";
      mode = [ "n" ];
      action = helpers.mkRaw "function() Snacks.commands() end";
      options.desc = "Commands";
    }
    {
      key = "<leader>hh";
      mode = [ "n" ];
      action = helpers.mkRaw "function() Snacks.help() end";
      options.desc = "Help Tags";
    }
  ];

  lsp.keymaps = [
    {
      key = "grr";
      action = helpers.mkRaw "function() Snacks.lsp_references() end";
      options.desc = "Lsp References";
    }
    {
      key = "gd";
      action = helpers.mkRaw "function() Snacks.lsp_definitions() end";
      options.desc = "Lsp Definitions";
    }
    {
      key = "gry";
      action = helpers.mkRaw "function() Snacks.lsp_type_definitions() end";
      options.desc = "Lsp T[y]pe Definitions";
    }
    {
      key = "<leader>ss";
      action = helpers.mkRaw "function() Snacks.lsp_symbols() end";
      options.desc = "Lsp Symbols";
    }
    {
      key = "<leader>sS";
      action = helpers.mkRaw "function() Snacks.lsp_workspace_symbols() end";
      options.desc = "Lsp Workspace Symbols";
    }
  ];
}
