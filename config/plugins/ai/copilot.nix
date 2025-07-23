{ config, ... }:
{
  plugins = {
    copilot-lua = {
      enable = true;
      lazyLoad.settings = {
        enable = true;
        event = [
          "BufReadPost"
          "BufWritePost"
          "BufNewFile"
        ];
      };
      settings = {
        panel.enabled = !config.plugins.blink-cmp-copilot.enable;
        suggestion.enabled = !config.plugins.blink-cmp-copilot.enabled;
      };
    };
    copilot-chat = {
      inherit (config.plugins.copilot-lua) enable;
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

  keymaps = [
    {
      mode = "n";
    }
  ];
}
