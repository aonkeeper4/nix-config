{ pkgs, ... }: {
  # desktop apps
  home.packages = with pkgs; [
    # media
    vlc
    gimp
    krita
    aseprite
    kdePackages.kdenlive
    audacity

    # office
    libreoffice

    # browser
    firefox
  ];
}
