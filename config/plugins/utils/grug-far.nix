{ pkgs, ... }:
{
  plugins = {
    grug-far = {
      enable = true;
    };
  };

  extraPackages = with pkgs; [
    ast-grep
  ];
}
