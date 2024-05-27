{
  plugins = {
    alpha = {
      enable = true;
      iconsEnabled = true;
      layout = let
        padding = val: {
          type = "padding";
          inherit val;
        };
      in [
        (padding 4) {
          opts = {
            hl = "AlphaHeader";
            position = "center";
          };
          type = "text";
          val = [
            "⠀⠀⠀⠀⠀⢀⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⡠⠔⢦⠀⠀⠀"
            "⠀⠀⠀⠀⠀⡞⠈⠳⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⡴⠚⠁⠀⠀⠘⡄⠀⠀"
            "⠀⠀⠀⠀⡼⠀⠀⠀⠈⠳⡄⠀⠀⠀⠀⢀⣀⣀⡀⠀⠀⠀⠀⠀⠀⠀⢀⠔⠁⠀⠀⠀⠀⠀⠀⢧⠀⠀"
            "⠀⠀⠀⢰⠃⠀⠀⠀⠀⠀⠈⠢⡀⠀⠀⢸⠀⠀⠈⠙⠲⢄⡀⠀⠀⡰⠃⠀⠀⠀⠀⠀⠀⠀⠀⢸⠀⠀"
            "⠀⠀⠀⡞⠀⠀⠀⠀⠀⠀⠀⠀⠙⢦⡀⠈⢧⠀⠀⠀⠀⠀⠙⢦⣰⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⡇⠀"
            "⠀⠀⠀⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⠝⠚⠉⠁⠀⠀⠀⠀⠀⠀⠙⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡇⠀"
            "⠀⠀⠀⡇⠀⠀⠀⠀⠀⠀⠀⠀⠈⠉⠉⠉⠉⠉⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⡇⠀"
            "⠀⠀⠀⣇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣸⠀⠀"
            "⠀⠀⠀⢸⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⠇⠀⠀"
            "⠀⠀⠀⠀⢣⠀⠀⠈⢹⠋⠉⢹⣿⣿⣿⣷⠀⠀⠀⠀⠀⢰⣿⣿⣿⣿⠉⠉⢻⠉⠀⠀⠀⡠⠋⠀⠀⠀"
            "⠀⢤⢤⣀⣈⣣⡀⠀⡏⠀⠀⢸⣿⣿⣿⣿⠀⠀⠀⠀⠀⢸⣿⣿⣿⣿⠀⠀⠈⡇⠀⠐⠚⠒⠒⡲⠂⠀"
            "⠀⠈⢦⡀⠀⠀⠀⠀⣇⠀⠀⠘⣿⣿⣿⠏⠀⠀⠀⠀⠀⠈⢿⣿⣿⡟⠀⠀⢀⡇⠀⠀⠀⣠⠞⠁⠀⠀"
            "⠀⠀⠀⠈⡶⠀⣠⢤⠈⣀⠀⠀⠈⠉⠁⠀⠈⠉⠉⠀⠀⠀⠀⠈⠉⠀⠀⣠⢈⠤⠀⠀⠺⡅⠀⠀⠀⠀"
            "⠀⠀⠀⣸⠁⠀⠀⠘⠉⠀⠀⠀⠀⠀⠀⡀⢀⡠⠤⢤⣤⡤⠆⠀⠀⠀⠈⠈⠁⠀⠀⠀⠀⠘⢆⠀⠀⠀"
            "⠀⠀⠀⠧⠤⠤⠤⠤⣄⡀⠀⠀⠀⠀⠀⠉⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⡤⠤⠤⠴⠒⠚⠂⠀⠀"
            "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⢳⡦⠤⢤⣤⡄⠀⠀⠀⠀⠀⠀⠀⠀⠤⢴⠒⠋⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀"
            "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠳⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⢧⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀"
            "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⡴⠋⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢣⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀"
            "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠚⠒⣲⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢧⠀⠀⠀⠀⠀⠀⠀⠀⠀"
            "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⠇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠸⡄⠀⠀⠀⠀⠀⠀⠀⠀"
            "                                      "
            "   You like editing text, don't you?  "
          ];
        }
        (padding 2) {
          type = "button";
          val = "  Find File";
          on_press.raw = "require('telescope.builtin').find_files";
          opts = {
            keymap = [
              "n"
              "f"
              ":Telescope find_files <CR>"
              {
                noremap = true;
                silent = true;
                nowait = true;
              }
            ];
            shortcut = "f";
            position = "center";
            cursor = 3;
            width = 38;
            align_shortcut = "right";
            hl_shortcut = "Keyword";
          };
        }
        (padding 1) {
          type = "button";
          val = "  New File";
          on_press.raw = ":ene!";
          opts = {
            keymap = [
              "n"
              "e"
              ":e <CR>"
              {
                noremap = true;
                silent = true;
                nowait = true;
              }
            ];
            shortcut = "n";
            position = "center";
            cursor = 3;
            width = 38;
            align_shortcut = "right";
            hl_shortcut = "Keyword";
          };
        }
        (padding 1) {
          type = "button";
          val = "󰈚  Recent Files";
          on_press.raw = "require('telescope.builtin').oldfiles";
          opts = {
            keymap = [
              "n"
              "r"
              ":Telescope oldfiles <CR>"
              {
                noremap = true;
                silent = true;
                nowait = true;
              }
            ];
            shortcut = "r";
            position = "center";
            cursor = 3;
            width = 38;
            align_shortcut = "right";
            hl_shortcut = "Keyword";
          };
        }
        (padding 1) {
          type = "button";
          val = "  Find Text";
          on_press.raw = "require('telescope.builtin').live_grep";
          opts = {
            # hl = "comment";
            keymap = [
              "n"
              "g"
              ":Telescope live_grep <CR>"
              {
                noremap = true;
                silent = true;
                nowait = true;
              }
            ];
            shortcut = "g";
            position = "center";
            cursor = 3;
            width = 38;
            align_shortcut = "right";
            hl_shortcut = "Keyword";
          };
        }
        (padding 1) {
          type = "button";
          val = "  Restore Session";
          on_press.raw = "require('persistence').load()";
          opts = {
            # hl = "comment";
            keymap = [
              "n"
              "s"
              ":lua require('persistence').load()<CR>"
              {
                noremap = true;
                silent = true;
                nowait = true;
              }
            ];
            shortcut = "s";
            position = "center";
            cursor = 3;
            width = 38;
            align_shortcut = "right";
            hl_shortcut = "Keyword";
          };
        }
        (padding 1) { 
          type = "button";
          val = "  Nix Config";
          on_press.raw = ":e /etc/nixos";
          opts = {
            # hl = "comment";
            keymap = [
              "n"
              "c"
              ":e /etc/nixos <CR>"
              {
                noremap = true;
                silent = true;
                nowait = true;
              }
            ];
            shortcut = "c";
            position = "center";
            cursor = 3;
            width = 38;
            align_shortcut = "right";
            hl_shortcut = "Keyword";
          };
        }
        (padding 1) {
          type = "button";
          val = "  Quit Neovim";
          on_press.raw = "function() vim.cmd[[qa]] end";
          opts = {
            # hl = "comment";
            keymap = [
              "n"
              "q"
              ":qa<CR>"
              {
                noremap = true;
                silent = true;
                nowait = true;
              }
            ];
            shortcut = "q";
            position = "center";
            cursor = 3;
            width = 38;
            align_shortcut = "right";
            hl_shortcut = "Keyword";
          };
        }
      ];
    };
  };
}
