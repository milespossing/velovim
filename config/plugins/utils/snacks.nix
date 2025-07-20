{
  plugins.snacks = {
    enable = true;
    settings = {
      lazygit.enabled = true;
      explorer.enabled = true;
    };
  };
  keymaps = [
    {
      mode = "n";
      key = "<leader>gg";
      action = "<cmd>lua Snacks.lazygit()<CR>";
      options.desc = "Open lazygit";
    }
    {
      mode = "n";
      key = "<leader>e";
      action = "<cmd>lua Snacks.explorer()<CR>";
      options = {
        silent = true;
        desc = "Open Explorer";
      };
    }
  ];
}
