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

  lsp.keymaps = [
    {
      key = "grr";
      action = "<cmd>FzfLua lsp_references<cr>";
      options.desc = "Lsp References";
    }
    {
      key = "grd";
      action = "<cmd>FzfLua lsp_definitions<cr>";
      options.desc = "Lsp Definitions";
    }
    {
      key = "grL";
      action = "<cmd>FzfLua lsp_finder<cr>";
      options.desc = "Lsp Finder";
    }
    {
      key = "cA";
      action = "<cmd>FzfLua lsp_code_actions<cr>";
      options.desc = "Lsp Code Actions";
    }
  ];
}
