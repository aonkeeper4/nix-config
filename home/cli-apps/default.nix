{ pkgs, ... }: {
  # nushell
  programs = {
    nushell = {
      enable = true;
      configFile.source = ./nushell.nu;
      shellAliases = {
        vi = "hx";
        vim = "hx";
        nano = "hx";
      };
    };

    carapace.enable = true;
    carapace.enableNushellIntegration = true;
  };

  # starship
  programs.starship.enable = true;
  home.file.".config/starship.toml".source = ./starship.toml;

  # alacritty
  programs.alacritty = {
    enable = true;
    settings = {
      env.TERM = "xterm-256color";
      font = {
        size = 12;
        draw_bold_text_with_bright_colors = true;
      };
      scrolling.multiplier = 5;
      selection.save_to_clipboard = true;
    };
  };

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
  ];
}
