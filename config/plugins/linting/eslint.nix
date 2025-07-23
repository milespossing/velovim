{ pkgs, lib, ... }:
{
  plugins = {
    conform-nvim.settings.formatters.eslint_d = {
      command = lib.getExe pkgs.eslint_d;
    };
    lsp.servers.eslint = {
      enable = true;
      filetypes = [
        "javascript"
        "javascriptreact"
        "javascript.jsx"
        "typescript"
        "typescriptreact"
        "typescript.tsx"
        "vue"
        "html"
        "markdown"
        "json"
        "jsonc"
        "yaml"
        "toml"
        "xml"
        "gql"
        "graphql"
        "svelte"
        "css"
        "less"
        "scss"
        "pcss"
        "postcss"
      ];
    };
  };
}
