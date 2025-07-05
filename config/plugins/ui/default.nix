{ pkgs, ... }:
{
  imports = [
    ./alpha.nix
    ./bufferline.nix
    ./flash.nix
    ./fzf-lua.nix
    ./oil.nix
    # ./lualine.nix
    ./noice.nix
  ];

  plugins = {
    trim.enable = true;
    dressing.enable = true;
    todo-comments.enable = true;
    web-devicons.enable = true;
  };

  extraPlugins = with pkgs.vimPlugins; [ nui-nvim ];
}
