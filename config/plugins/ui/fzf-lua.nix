{
  plugins.fzf-lua = {
    enable = true;
    keymaps = {
      # Files and buffers
      "<leader>ff" = {
        action = "files";
        options.desc = "Find Files";
      };
      "<leader>," = {
        action = "buffers";
        options.desc = "Buffers";
      };
      "<leader>fr" = {
        action = "oldfiles";
        options.desc = "Recent";
      };
      "<leader>ft" = {
        action = "filetypes";
        options.desc = "File Type";
      };

      # Search
      "<leader>sg" = {
        action = "live_grep";
        options.desc = "Live Grep";
      };

      # Help
      "<leader>hk" = {
        action = "keymaps";
        options.desc = "Keymaps";
      };
      "<leader>hC" = {
        action = "commands";
        options.desc = "Commands";
      };
    };
  };
}
