{ pkgs, ... }: {
  # desktop apps
  home.packages = with pkgs; [
    # media
    vlc
    gimp
    krita
    kdenlive

    # office
    libreoffice

    # browser
    firefox
  ];
}
