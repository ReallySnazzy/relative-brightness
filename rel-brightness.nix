{ pkgs ? import <nixpkgs> {} }:
pkgs.stdenv.mkDerivation rec {
  pname = "relative-brightness";
  version = "0.1.0";

  src = builtins.fetchGit {
    url = "https://github.com/ReallySnazzy/relative-brightness.git";
    rev = "1308c503ca83222a1574f2d898b145639fc33b44";
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

