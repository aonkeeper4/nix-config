{ pkgs, ... }: {
  # desktop apps
  home.packages = with pkgs; [
    # media
    vlc
    gimp
    krita
    kdePackages.kdenlive
    audacity

    # office
    libreoffice

    # browser
    firefox
  ];
}
