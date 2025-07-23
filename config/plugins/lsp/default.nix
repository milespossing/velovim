{
  plugins = {
    lsp = {
      enable = true;
      inlayHints = true;
      keymaps.lspBuf = { };
    };

    lint.enable = true;
    lsp-signature.enable = true;
  };

  lsp.keymaps = [
    {
      key = "<leader>cl";
      action = "<cmd>LspInfo<cr>";
      options.desc = "Lsp Info";
    }
  ];
}
