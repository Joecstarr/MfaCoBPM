{
  description = "Flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixpkgs-unstable";
  };

  outputs =
    { self
    , nixpkgs
    ,
    }:
    let
      system = "x86_64-linux";
      pkgs = nixpkgs.legacyPackages.${system};
      tex = pkgs.texlive.combine {
        inherit (pkgs.texlive) scheme-medium latexmk ifoddpage relsize mdframed zref needspace xcharter xstring xetex fontaxes amsmath lipsum enumitem glossaries listings tcolorbox environ tikzfill pdfcol sauerj adjustbox datetime fmtcount framed doi graphbox;
      };
    in
    {

      devShells.${system}.default = pkgs.mkShell {
        NIX_LD_LIBRARY_PATH = pkgs.lib.makeLibraryPath [
          pkgs.stdenv.cc.cc
          pkgs.libz
        ];

        buildInputs = with pkgs; [
          nodejs
          just
          mystmd
          tex
          rsync
          python3
          act
          zip
        ];

        shellHook = ''
          echo done!
        '';
      };
    };
}
