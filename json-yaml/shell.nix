{ pkgs ? import (fetchTarball "https://github.com/NixOS/nixpkgs/archive/2465176f04986a0136b9f326bd060954bd71b1e6.tar.gz") {} }:

pkgs.mkShell {
  buildInputs = [
    # yq also will include jq
    pkgs.yq
  ];

  # TODO: add a wrapper or nix flake to just do this single task in a bash function?
  shellHook = ''
    echo 'can transform yaml to json'
    echo -e 'use: \n cat file.yaml | yq >> file.json'
  '';

}
