{ pkgs, ... }:
{
  extraPlugins = with pkgs; [
    vimPlugins.nvim-paredit
  ];

  extraConfigLua = ''
    local paredit = require('nvim-paredit')
    paredit.setup()'';
}
