{ pkgs, ... }:
{
  imports = [
    ./mini.nix
    ./kulala.nix
  ];

  extraPlugins = with pkgs.vimPlugins; [
    nvim-surround
    plenary-nvim
  ];

  extraConfigLua = ''
    require("nvim-surround").setup()
  '';
}
