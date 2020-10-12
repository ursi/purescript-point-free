with import <nixos> {};

mkShell {
  buildInputs = [
    dhall
    nodejs
    purescript
    spago
  ] ++
  (with nodePackages; [
    bower
    pulp
    purty
  ]);
}
