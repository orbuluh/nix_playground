{
  description = "From OpenTechLab YT: C++ Application Example";

  inputs = {
    nixpkgs.url = "nixpkgs/nixos-24.05";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = { self, nixpkgs, flake-utils }:
  flake-utils.lib.eachDefaultSystem(
    system: let
        pkgs = import nixpkgs { inherit system; };
    in {
      packages = {
        default = pkgs.stdenv.mkDerivation {
          name = "nix_test_app";
          src = ./.;
          nativeBuildInputs = with pkgs;[ cmake ];
          buildInputs = with pkgs; [ boost185 ]; #boost also okay
        };
      };
    }
  );
}
