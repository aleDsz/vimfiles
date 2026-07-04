{
  description = "aleDsz NeoVim files";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    utils.url = "github:numtide/flake-utils";
  };

  outputs = {
    self,
    nixpkgs,
    utils,
  }:
    utils.lib.eachDefaultSystem (system: let
      pkgs = (import nixpkgs) {inherit system;};

      libraries = with pkgs; [pkg-config];
      packages = with pkgs; [lua5_4 stylua];
    in {
      devShells.default = pkgs.mkShell {
        buildInputs = packages;
        nativeBuildInputs = libraries;

        shellHook = ''
          export LD_LIBRARY_PATH=${pkgs.lib.makeLibraryPath libraries}:$LD_LIBRARY_PATH
        '';
      };

      formatter = pkgs.alejandra;
    });
}
