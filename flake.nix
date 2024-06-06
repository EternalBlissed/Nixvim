{
  description = "A nixvim configuration";

  inputs = {
    nixvim.url = "github:nix-community/nixvim";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = { self, nixpkgs, nixvim, flake-utils, ... }@inputs:
    let config = import ./config; # import the module directly
    in flake-utils.lib.eachDefaultSystem (system:
      let
        nixvimLib = nixvim.lib.${system};
        pkgs = import nixpkgs { inherit system; };
        nixvim' = nixvim.legacyPackages.${system};
        nvim = nixvim'.makeNixvimWithModule {
          inherit pkgs;
          module = config;
        };
      in
      {
        formatter = nixpkgs.legacyPackages.${system}.nixpkgs-fmt;

        checks = {
          default = nixvimLib.check.mkTestDerivationFromNvim {
            inherit nvim;
            name = "Eternal's NeoVim Distro";
          };
        };

        packages = {
          # Lets you run `nix run .` to start nixvim
          default = nvim;
        };

        devShells.default = pkgs.mkShell {
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
            tmux
          ];
          packages = with pkgs; [ ];
          shellHook = ''
            zsh
          '';
        };
      }
    );
}
