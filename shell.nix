{ pkgs ? import <nixpkgs> { } }:
pkgs.mkShell {
  nativeBuildInputs = with pkgs; [
    autoPatchelfHook
  ];

  buildInputs = with pkgs; [
    jq
    nodejs
    hugo
    just
    mystmd
  ];

  shellHook = ''
    export PATH="$PWD/node_modules/.bin/:$PATH"
    alias scripts='jq ".scripts" package.json'
    export PUPPETEER_EXECUTABLE_PATH="${pkgs.chromium.outPath}/bin/chromium"
    npm install decktape
  '';
}
