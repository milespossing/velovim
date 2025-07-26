{ lib, ... }:
let
  helpers = lib.nixvim;
  inc = "increment";
  dec = "decrement";
  normal = "normal";
  dialMap =
    dir: mode: helpers.mkRaw "function() require('dial.map').manipulate('${dir}', '${mode}') end";
in
{
  plugins = {
    dial = {
      enable = true;
      luaConfig.post = ''
        local augend = require('dial.augend')
        require('dial.config').augends:register_group{
          default = {
            augend.integer.alias.decimal,
            augend.integer.alias.hex,
            augend.date.alias["%Y/%m/%d"],
            augend.hexcolor.new {
              case = "prefer_lower",
            },
          },
        }
      '';
    };
  };

  keymaps = [
    {
      mode = [ "n" ];
      key = "<C-a>";
      action = dialMap inc normal;
    }
    {
      mode = [ "n" ];
      key = "<C-x>";
      action = dialMap dec normal;
    }
  ];
}
