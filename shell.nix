with import <nixos> {};

mkShell {
  buildInputs = [
    dhall
    nodejs
    nodePackages.bower
    nodePackages.pulp
    purescript
    spago
  ]
}
