{ ... }:
{
  plugins = {
    treesitter.settings.ensure_installed = [
      "json"
      "json5"
    ];

    lsp.servers.jsonls = {
      enable = true;
      settings = {
        json = {
          format.enable = true;
          validate.enable = true;
        };
      };
    };
  };
}
