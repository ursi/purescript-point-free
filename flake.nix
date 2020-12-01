{
  inputs.flake-utils.url = "github:numtide/flake-utils";

  outputs = { self, nixpkgs, flake-utils }:
    flake-utils.lib.eachDefaultSystem
      (system:
        with nixpkgs.legacyPackages.${system};

        {
          devShell = mkShell {
            buildInputs = [
              dhall
              nodejs
              nodePackages.bower
              nodePackages.pulp
              purescript
              spago
            ];
          };
        }
      );
}
