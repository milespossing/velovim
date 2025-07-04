{ config, ... }:
{
  plugins = {
    copilot-lua = {
      enable = true;
      settings = {
        panel.enabled = !config.plugins.blink-copilot.enable;
        suggestion.enabled = !config.plugins.blink-copilot.enabled;
      };
    };
    copilot-chat = {
      inherit (config.plugins.copilot-lua) enable;
    };
  };

  # Define a simple keymap to open Copilot Chat.
  keymaps = [
    {
      mode = "n";
      key = "<leader>ac";
      action = ":CopilotChat<CR>";
      options.desc = "Open Copilot Chat";
    }
  ];
}
