{
  plugins.none-ls = {
    enable = true;
    sources = {
      diagnostics = {
        deadnix.enable = true;
      };
      formatting = {
        nixfmt.enable = true;
        markdownlint.enable = true;
        shellharden.enable = true;
        shfmt.enable = true;
        prettierd.enable = true;
      };
    };
  };
}
