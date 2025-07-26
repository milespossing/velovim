{ lib, ... }:
let
  helpers = lib.nixvim;
in
{
  plugins.neotest = {
    enable = true;
  };

  keymaps = [
    {
      key = "<leader>ts";
      action = helpers.mkRaw "function() require('neotest').summary.toggle() end";
      options.desc = "Summary (Neotest)";
    }
    {
      key = "<leader>tr";
      action = helpers.mkRaw "function() require('neotest').run.run() end";
      options.desc = "Run Nearest (Neotest)";
    }
    {
      key = "<leader>tl";
      action = helpers.mkRaw "function() require('neotest').run.run_last() end";
      options.desc = "Run Last (Neotest)";
    }
    {
      key = "<leader>tt";
      action = helpers.mkRaw "function() require('neotest').run.run(vim.fn.expand('%')) end";
      options.desc = "Run File (Neotest)";
    }
    {
      key = "<leader>to";
      action = helpers.mkRaw "function() require('neotest').output.open({ enter = true, auto_close = true }) end";
      options.desc = "Show Output (Neotest)";
    }
    {
      key = "<leader>tO";
      action = helpers.mkRaw "function() require('neotest').output_panel.toggle() end";
      options.desc = "Toggle Output Panel (Neotest)";
    }
    {
      key = "<leader>tS";
      action = helpers.mkRaw "function() require('neotest').run.stop() end";
      options.desc = "Stop (Neotest)";
    }
    {
      key = "<leader>tw";
      action = helpers.mkRaw "function() require('neotest').watch.toggle(vim.fn.expand('%')) end";
      options.desc = "Toggle Watch (Neotest)";
    }
  ];
}
