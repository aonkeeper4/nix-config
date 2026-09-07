{ pkgs, ... }: {
  # vesktop
  home.packages = with pkgs; [
    vesktop
  ];

  # config files
  home.file.".config/vesktop/settings.json".source = ./vesktop-settings.json;
  home.file.".config/vesktop/themes/midnight-tokyo-night-renogare.theme.css".source =
    ./midnight-tokyo-night-renogare.theme.css;
  home.file.".config/vesktop/settings/quickCss.css".source = ./quickCss.css;
  home.file.".config/vesktop/settings/settings.json".source = ./plugin-settings.json;
}
