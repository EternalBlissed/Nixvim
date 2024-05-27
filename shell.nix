{ pkgs }:

pkgs.mkShell {
  buildInputs = with pkgs; [
    # Rust
    cargo
    rustc

   # JavaScript
    bun
    nodejs

    # Tools
    ripgrep
    lazygit
  ];
}
