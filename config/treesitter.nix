{
  plugins = {
    treesitter = {
      enable = true;
      nixGrammars = true;
      indent = true;
      nixvimInjections = true;
      ensureInstalled = "all";
    };
    treesitter-context = {
      enable = true;
      settings = { max_lines = 2; };
    };
    rainbow-delimiters.enable = true;
  };
}
