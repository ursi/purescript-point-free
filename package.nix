{ licenses, ps-pkgs, ... }:
  with ps-pkgs;
  { version = "1.0.0";
    dependencies = [ prelude ];

    pursuit =
      { name = "point-free";
        repo = "https://github.com/ursi/purescript-point-free.git";
        license = licenses.bsd3;
      };
  }
