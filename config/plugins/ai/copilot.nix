{ config, ... }:
{
  plugins = {
    copilot-lua = {
      enable = true;
      settings = {
        panel.enabled = !config.plugins.blink-cmp-copilot.enable;
        suggestion.enabled = !config.plugins.blink-cmp-copilot.enabled;
      };
    };
    copilot-chat = {
      inherit (config.plugins.copilot-lua) enable;
    };
  };

  keymaps = [
    {
      mode = "n";
    }
  ];
}
