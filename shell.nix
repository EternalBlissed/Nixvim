{ pkgs }:

pkgs.mkShell {
  buildInputs = with pkgs; [
    # Rust
    cargo
    rustc

   # JavaScript
    bun
    nodejs
    vue

    # Tools
    ripgrep
    lazygit
  ];
}
