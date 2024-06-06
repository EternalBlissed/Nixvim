{
  plugins.toggleterm = {
    enable = true;
    settings = {
      open_mapping = "[[<C-t>]]";
      shell = "nix develop github:eternalblissed/Nixvim --quiet";
      autochdir = true;
    };
  };
}
