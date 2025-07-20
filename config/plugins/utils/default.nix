{ pkgs, ... }:
{
  imports = [
    ./conjure.nix
    ./mini.nix
    ./kulala.nix
    ./snacks.nix
  ];

  extraPlugins = with pkgs.vimPlugins; [
    nvim-surround
    plenary-nvim
  ];

  extraConfigLua = ''
    require("nvim-surround").setup()
  '';
}
