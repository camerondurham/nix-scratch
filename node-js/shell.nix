{ pkgs ? import (fetchTarball "https://github.com/NixOS/nixpkgs/archive/2465176f04986a0136b9f326bd060954bd71b1e6.tar.gz") {} }:


pkgs.mkShell {
  buildInputs = [
    pkgs.yarn
    pkgs.yarn2nix
    pkgs.nodejs-14_x
  ];

  shellHook = ''
    echo hello node.js
  '';

}
