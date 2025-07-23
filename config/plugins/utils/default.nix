{ pkgs, ... }:
{
  imports = [
    # general
    ./conjure.nix
    ./kulala.nix
    ./oil.nix
    # suites
    ./mini.nix
    ./snacks.nix
    # Find/replace
    ./grug-far.nix
    ./spectre.nix
  ];

  extraPlugins = with pkgs.vimPlugins; [
    nvim-surround
    plenary-nvim
  ];

  extraConfigLua = ''
    require("nvim-surround").setup()
  '';
}
