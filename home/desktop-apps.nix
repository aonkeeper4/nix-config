{ pkgs, ... }: {
  # fonts
  fonts = {
    fontconfig.enable = true;
    packages = with pkgs; [
      nerd-fonts.jetbrains-mono
      noto-fonts-cjk-sans
      renogare
    ];
  };

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
