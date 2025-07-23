{
  config,
  pkgs,
  lib,
  ...
}:
let
  cfg = config.velovim.lang.typescript;
in
{
  options.velovim.lang.typescript = {
    useTypescriptTools = lib.mkOption {
      description = "Use typescript-tools plugin";
      default = true;
      type = lib.types.bool;
    };
  };
  config = {
    plugins = {
      conform-nvim.settings = {
        formatters_by_ft = {
          javascript = [ "eslint_d" ];
          javascriptreact = [ "eslint_d" ];
          typescript = [ "eslint_d" ];
          typescriptreact = [ "eslint_d" ];
        };
      };

      typescript-tools = {
        enable = cfg.useTypescriptTools;

        lazyLoad.settings.ft = [
          "javascript"
          "javascriptreact"
          "javascript.jsx"
          "typescript"
          "typescriptreact"
          "typescript.tsx"
        ];

        settings = {
          settings = {
            code_lens = "off";
            complete_function_calls = false;
            disable_member_code_lens = true;
            expose_as_code_action = "all";
            include_completions_with_insert_text = true;
            publish_diagnostic_on = "insert_leave";
            separate_diagnostic_server = true;
            tsserver_locale = "en";
            tsserver_max_memory = "auto";
            tsserver_path = "${pkgs.typescript}/lib/node_modules/typescript/lib/tsserver.js";
            jsx_close_tag = {
              enable = false;
              filetypes = [
                "javascriptreact"
                "typescriptreact"
              ];
            };
          };
        };
      };

      lsp.servers = {
        vtsls = {
          enable = !cfg.useTypescriptTools;
          filetypes = [
            "javascript"
            "javascriptreact"
            "javascript.jsx"
            "typescript"
            "typescriptreact"
            "typescript.tsx"
          ];
          settings = {
            complete_function_calls = true;
          };
        };
      };

      ts-autotag.enable = true;

      treesitter.settings.ensure_installed = [
        "typescript"
        "tsx"
      ];

      neotest.adapters.vitest.enable = true;
    };
  };
}
