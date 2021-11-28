{ ps-pkgs, ps-pkgs-ns, ... }:
  with ps-pkgs;
  { version = "1.0.0";
    dependencies = [ prelude ];
  }
