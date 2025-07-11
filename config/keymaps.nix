{
  globals.mapleader = " ";

  keymaps = [
    # Windows
    {
      mode = "n";
      key = "<leader>wk";
      action = "<C-w>k";
      options.desc = "Move To Window Up";
    }

    {
      mode = [
        "t"
        "n"
      ];
      key = "<C-h>";
      action = "<cmd>wincmd h<cr>";
      options.desc = "Move To Window Left";
    }

    {
      mode = [
        "t"
        "n"
      ];
      key = "<C-j>";
      action = "<cmd>wincmd j<cr>";
      options.desc = "Move To Window Down";
    }

    {
      mode = [
        "t"
        "n"
      ];
      key = "<C-k>";
      action = "<cmd>wincmd k<cr>";
      options.desc = "Move To Window Up";
    }

    {
      mode = [
        "t"
        "n"
      ];
      key = "<C-l>";
      action = "<cmd>wincmd l<cr>";
      options.desc = "Move To Window Right";
    }

    {
      mode = "n";
      key = "<leader>wj";
      action = "<C-w>j";
      options.desc = "Move To Window Down";
    }

    {
      mode = "n";
      key = "<leader>wh";
      action = "<C-w>h";
      options.desc = "Move To Window Left";
    }

    {
      mode = "n";
      key = "<leader>wl";
      action = "<C-w>l";
      options.desc = "Move To Window Right";
    }

    {
      mode = "n";
      key = "<leader>wd";
      action = "<C-W>c";
      options = {
        silent = true;
        desc = "Delete window";
      };
    }

    {
      mode = "n";
      key = "<leader>ws";
      action = "<C-W>s";
      options = {
        silent = true;
        desc = "Split window below";
      };
    }

    {
      mode = "n";
      key = "<leader>wv";
      action = "<C-W>v";
      options = {
        silent = true;
        desc = "Split window right";
      };
    }

    # Buffers

    {
      mode = "n";
      key = "<S-h>";
      action = "<cmd>BufferLineCyclePrev<cr>";
      options = {
        silent = true;
      };
    }

    {
      mode = "n";
      key = "<S-l>";
      action = "<cmd>BufferLineCycleNext<cr>";
      options.silent = true;
    }

  ];
}
