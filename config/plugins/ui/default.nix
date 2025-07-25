{ pkgs, ... }:
{
  imports = [
    ./bufferline.nix
    ./lualine.nix
    ./noice.nix
    ./snacks-dashboard.nix
    ./terminal.nix
  ];

  plugins = {
    trim.enable = true;
    dressing.enable = true;
    todo-comments.enable = true;
    web-devicons.enable = true;
  };

  extraPlugins = with pkgs.vimPlugins; [ nui-nvim ];
}
