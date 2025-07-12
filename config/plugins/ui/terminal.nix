{ lib, ... }:
{
  plugins.toggleterm = {
    enable = true;
    settings = {
      open_mapping = "[[<C-t>]]";
      shell = "bash";
      hide_numbers = true;
      share_terminals = true;
      start_in_insert = true;
      terminal_mappings = true;
    };
  };
}
