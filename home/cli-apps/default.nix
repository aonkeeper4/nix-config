{ pkgs, ... }: {
  # nushell
  programs = {
    nushell = {
      enable = true;
      configFile.source = ./nushell.nu;
    };

    carapace = {
      enable = true;
      enableNushellIntegration = true;
    };
  };

  # starship
  programs.starship.enable = true;
  home.file.".config/starship.toml".source = ./starship.toml;

  # cli apps
  home.packages = with pkgs; [
    # utils
    ripgrep
    jq
    yq
    eza
    fzf
    curl
    nnn
    zip
    unzip
    xz

    # monitoring
    btop
    strace
    ltrace
    lsof
    sysstat
    lm_sensors

    # programming
    cmake
    gcc
    go
    gopls
    gnumake
    nil
    nixfmt
    python3
    rustup
    julia-bin

    # misc
    file
    which
    tree
    zstd
    gnupg
    fastfetch
    yt-dlp
    libqalculate
    ffmpeg
    wine
    winetricks
  ];
}
