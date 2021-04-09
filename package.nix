{ ps-pkgs, ps-pkgs-ns, ... }:
  with ps-pkgs;
  { version = "0.1.3";
    dependencies = [ prelude ];
  }
