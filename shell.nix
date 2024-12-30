{ pkgs ? import <nixpkgs> { } }:
pkgs.mkShell {
  nativeBuildInputs = with pkgs; [
    autoPatchelfHook
  ];

  buildInputs = with pkgs; [
    nodejs
    just
    mystmd
    act
  ];

  shellHook = ''
  echo "done!"
  '';
}
