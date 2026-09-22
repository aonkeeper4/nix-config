{ pkgs, ... }: {
  # compat stuff
  home.packages = with pkgs; [
    # audio
    libpulseaudio
    alsa-lib
    jack2

    # wayland
    wayland

    # sdl
    sdl2-compat
    sdl3

    # xorg
    libx11
    libxext
    libxcursor
    libxi
    libxfixes
    libxrandr
    libxkbcommon
  ];
}
