{ pkgs, ... }:
{
  plugins = {
    copilot-chat = {
      enable = true;
      lazyLoad.settings = {
        enable = true;
        event = [
          "BufReadPost"
          "BufWritePost"
          "BufNewFile"
        ];
      };
    };
  };

  extraPackages = with pkgs; [
    lynx
  ];

  extraLuaPackages = p: [
    p.tiktoken_core
  ];
}
