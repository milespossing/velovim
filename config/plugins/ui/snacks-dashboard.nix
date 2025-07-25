{
  pkgs,
  lib,
  headers,
  ...
}:
{
  plugins.snacks.settings.dashboard = {
    enabled = true;
    header = headers.velo;
    preset = {
      keys = [
        {
          icon = " ";
          key = "f";
          desc = "Find File";
          action = "<cmd>lua Snacks.dashboard.pick('files')<cr>";
        }
        {
          icon = " ";
          key = "n";
          desc = "New File";
          action = ":ene | startinsert";
        }
        {
          icon = " ";
          key = "g";
          desc = "Find Text";
          action = ":lua Snacks.dashboard.pick('live_grep')";
        }
        {
          icon = " ";
          key = "r";
          desc = "Recent Files";
          action = ":lua Snacks.dashboard.pick('oldfiles')";
        }
        {
          icon = " ";
          key = "c";
          desc = "Config";
          action = ":lua Snacks.dashboard.pick('files', { cwd = vim.fn.expand('$HOME/.nixdots') })";
        }
        {
          icon = " ";
          key = "q";
          desc = "Quit";
          action = ":qa";
        }
      ];
    };
    sections = [
      { section = "header"; }
      {
        section = "keys";
        gap = 1;
        padding = 1;
      }
      {
        section = "terminal";
        cmd = "${lib.getExe pkgs.krabby} random --no-title; sleep .1";
        pane = 2;
        height = 30;
      }
    ];
  };
}
