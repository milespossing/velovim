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
          val = [
            "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀Maybe if I just changed one thing...⠀⠀⠀⠀⠀⠀"
            "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⡀⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀"
            "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣤⣶⣶⣶⣶⣶⢾⣿⣿⣿⣿⣿⣻⣶⡦⣤⣤⣤⣤⣤⣤⣤⣤⣄⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀"
            "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣶⣿⣿⣿⣿⣄⣘⣻⣿⣿⣷⣄⠀⠀⠀⠀⠀⠀⠀⠀"
            "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣴⠞⠱⣿⣿⣿⡟⠉⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⣿⡿⠿⠘⢽⣿⡿⣿⣿⣿⣿⣿⣿⣿⣷⡀⠀⠀⠀⠀⠀⠀"
            "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣴⡿⣿⠹⠉⡺⣿⣿⣿⣶⣤⣿⣿⣿⣿⣯⣽⣿⣿⢣⡸⣿⡏⠙⠒⠛⠉⢛⣿⣿⣿⣿⣿⣿⣿⣿⣿⣦⠀⠀⠀⠀⠀"
            "⠀⠀⠀⠀⠀⠀⠀⠀⢀⣰⣿⡇⠃⠁⡀⣠⠀⣟⣿⣿⣾⣿⣿⣿⣿⣿⣿⣻⣿⣯⣇⣺⣩⣇⠠⣄⠀⠀⣶⡽⣿⣩⣧⣷⣾⣿⣿⣿⣿⠇⠀⠀⠀⠀"
            "⠀⠀⠀⠀⠀⠀⠀⠀⣾⣿⢗⠯⠀⡄⡔⡿⣿⣏⠳⠈⠻⣻⠟⠻⠛⢋⣁⠋⠻⢽⠿⡿⢿⣿⣿⠿⣟⣭⣽⣶⣿⣿⣿⣿⣿⣿⡿⠛⠁⠀⠀⠀⠀⠀"
            "⠀⠀⠀⠀⠀⠀⠀⣼⣽⣻⠀⡀⡸⢃⣾⠁⠛⠟⠂⣁⣠⣴⣶⣿⣿⣿⣿⣿⣿⣿⣾⣶⣷⣾⣾⣿⣿⣿⣿⣿⣿⣿⡿⠟⣛⣉⡀⠀⠀⠀⠀⠀⠀⠀"
            "⠀⠀⠀⠀⠀⠀⣰⣿⣻⣻⢀⣴⣇⣃⠷⣤⣠⣶⣿⣿⢿⠿⣿⣿⢿⢛⣛⣯⣿⣿⡿⠿⣿⣿⣿⠿⣟⣿⣿⣽⣿⣾⣿⣿⣿⣿⣷⠀⠀⠀⠀⠀⠀⠀"
            "⠀⠀⠀⠀⠀⣴⣿⣿⠟⢿⣋⢝⠏⣶⣤⣼⣿⣿⣆⣀⣸⣶⣷⣿⣿⣟⣿⣽⣿⣿⣿⣷⣶⣶⡤⣌⣶⣔⣯⣿⣿⣿⣿⣿⣿⣿⡿⠀⠀⠀⠀⠀⠀⠀"
            "⠀⠀⠀⠀⢰⣿⣿⡿⣅⠀⠹⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⣿⠟⢽⣟⣿⣿⣿⣿⣿⣿⣿⡿⠿⠿⠛⠋⠁⠀⠀⠀⠀⠀⠀⠀"
            "⠀⠀⠀⠀⢸⣿⢿⣷⣌⣛⢿⣿⣿⣿⣿⣿⣿⣛⢋⣿⣯⣿⡭⢻⣿⣿⣿⣿⣗⣻⣬⣷⣤⣿⣿⣿⡿⠟⣛⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀"
            "⠀⠀⠀⠀⣿⣿⣿⣿⣍⠓⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣽⣿⣿⣿⣿⣿⣯⣿⣿⣿⣿⣿⠿⢛⣭⡷⠿⠿⣿⣿⣿⣷⣶⣤⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀"
            "⠀⠀⠀⢸⣿⣿⢯⡻⣝⠿⠦⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠿⠟⠛⠉⠁⠀⠀⠀⠀⠀⠀⠀⠉⠙⢿⣿⣿⣿⣦⡀⠀⠀⠀⠀⠀⠀⠀"
            "⠀⠀⠀⢸⣿⣿⠷⡈⠈⢳⡉⠛⠿⢻⣿⣾⣻⣿⣿⣿⣿⣿⠿⠛⠛⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⢿⣿⣿⣿⡄⠀⠀⠀⠀⠀⠀"
            "⠀⠀⠀⣸⡿⢿⡟⠲⣼⠦⠵⣤⣌⣜⣿⣼⣿⣿⣿⣿⡿⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣿⣿⣿⣿⡄⠀⠀⠀⠀⠀"
            "⠀⠀⠀⣿⡙⢮⠳⡀⠈⣣⣴⣾⣿⣿⣿⣿⣿⣿⣿⣿⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⣀⢀⣠⣶⣶⣶⣦⣿⣿⣿⣿⣿⡿⠀⠀⠀⠀⠀"
            "⠀⠀⠀⣿⣯⣦⣤⣿⣼⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣴⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣧⠀⠀⠀⠀⠀"
            "⠀⠀⠀⠀⠀⠀⠀⠀⠉⠁⠀⠀⠀⠀⠀⠀⠀⠀⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣿⣿⠛⢛⣿⡿⠋⢹⣟⣿⣿⣿⣿⣿⣿⢭⣽⡆⠀⠀⠀⠀"
            "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⣿⡇⠀⢸⣿⠁⠀⠀⠉⠉⢿⣿⣿⣿⣿⣿⣿⣧⠀⠀⠀⠀"
            "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠁⠀⠘⢿⠀⠀⠀⠀⠀⠈⠻⢿⠿⠿⠿⠟⠛⠃⠀⠀⠀"
          ];
        }
        (padding 6)
        {
          type = "button";
          val = "  Find File";
          on_press.__raw = "function() require('fzf-lua').files() end";
          opts = {
            keymap = [
              "n"
              "f"
              "<cmd>FzfLua files<CR>"
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
          on_press.__raw = "require('fzf-lua').oldfiles";
          opts = {
            keymap = [
              "n"
              "r"
              "<cmd>FzfLua oldfiles<CR>"
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
          on_press.__raw = "require('fzf-lua').live_grep";
          opts = {
            keymap = [
              "n"
              "g"
              "<cmd>FzfLua live_grep<CR>"
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
