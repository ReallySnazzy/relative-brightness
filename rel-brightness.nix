{ pkgs ? import <nixpkgs> {} }:
pkgs.stdenv.mkDerivation rec {
  pname = "relative-brightness";
  version = "0.1.0";

  src = builtins.fetchGit {
    url = "https://github.com/ReallySnazzy/relative-brightness.git";
    rev = "f6e1570097e00740388d5e6f7de09c6c16b0d0da";
  };

  buildInputs = with pkgs; [
    git
    openssh
  ];

  configurePhase = ''
  '';

  buildPhase = ''
  '';

  installPhase = ''
    mkdir -p $out/bin
    cp ./relbrightness.sh $out/bin/relbrightness.sh
  '';

  meta = {
    homepage = "https://github.com/ReallySnazzy/relative-brightness";
    description = "Small wrapper around brightnessctl to adjust relative brightness";
    mainProgram = "relbrightness";
  };
}

