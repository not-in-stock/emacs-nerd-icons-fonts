{ lib, stdenvNoCC, fetchzip }:

stdenvNoCC.mkDerivation rec {
  pname = "emacs-all-the-icons-fonts";
  version = "0.1.0";

  src = fetchzip {
    url = "https://github.com/rainstormstudio/nerd-icons.el/archive/${version}.zip";
    hash = "sha256-vG1/qnbheZyq2uYEPA2tlOk+qdhCY9tfWfZUASo18j0=";
  };

  installPhase = ''
    runHook preInstall

    install -Dm644 fonts/*.ttf -t $out/share/fonts/nerd-icons

    runHook postInstall
  '';

  meta = with lib; {
    description = "Icon fonts for emacs nerd-icons";
    longDescription = ''
      The emacs package nerd-icons provides icons to improve
      presentation of information in emacs. This package provides
      the fonts needed to make the package work properly.
    '';
    homepage = "https://github.com/rainstormstudio/nerd-icons.el";

    /*
      The fonts come under a mixture of licenses - the MIT license,
      SIL OFL license, and Apache license v2.0. See the GitHub page
      for further information.
    */
    license = licenses.free;
    platforms = platforms.all;
    maintainers = with maintainers; [ not-in-stock ];
  };
}
