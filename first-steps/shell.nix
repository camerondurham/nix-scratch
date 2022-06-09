{ pkgs ? import (fetchTarball "https://github.com/NixOS/nixpkgs/archive/2465176f04986a0136b9f326bd060954bd71b1e6.tar.gz") {} }:


pkgs.mkShell {
  buildInputs = [
    pkgs.awscli
    pkgs.which
    pkgs.htop
    pkgs.zlib
  ];

  shellHook = ''
    echo hello
  '';

  AWS_DEFAULT_REGION = "us-west-2";
}
