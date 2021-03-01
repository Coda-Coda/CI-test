{ pkgs ? import <nixpkgs> {} } :
pkgs.stdenv.mkDerivation {
  name = "dsc";

  src = ./.;

  buildPhase = ''
    echo "Hello" > hello.txt
  '';

  installPhase = ''
    mkdir -p $out
    
    cp hello.txt $out/hello-out.txt
  '';
}