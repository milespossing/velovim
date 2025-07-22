{ lib, config, ... }:
{
  plugins = {
    mini = {
      enable = true;
      modules = {
        ai = { };
        icons = { };
        comment = {
          options = {
            customCommentString = ''
              <cmd>lua require("ts_context_commentstring.internal").calculate_commentstring() or vim.bo.commentstring<cr>
            '';
          };
        };
        # Highlight word under cursor
        cursorword = {
          delay = 0;
        };

        pairs = { };

        snippets = {
          snippets = {
            __unkeyed-1.__raw =
              lib.mkIf config.plugins.friendly-snippets.enable # Lua
                "require('mini.snippets').gen_loader.from_file('${config.plugins.friendly-snippets.package}/snippets/global.json')";
            __unkeyed-2.__raw = "require('mini.snippets').gen_loader.from_lang()";
          };
        };

        surround = {
          mappings = {
            add = "gsa";
            delete = "gsd";
            find = "gsf";
            find_left = "gsF";
            replace = "gsr";
          };
        };
      };
    };

    ts-context-commentstring.enable = true;
  };
}
