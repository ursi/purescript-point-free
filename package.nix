{ ps-pkgs, ps-pkgs-ns, ... }:
  with ps-pkgs;
  { version = "0.1.3";
    repo = "https://github.com/ursi/purescript-point-free.git";
    rev = "77a43a9eb14d8e21cf8e37341c5cbd019ad826a1";
    dependencies = [ prelude ];
  }
