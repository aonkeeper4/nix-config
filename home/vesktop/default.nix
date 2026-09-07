{ pkgs, ... }: {
  # vesktop
  home.packages = with pkgs; [
    vesktop
  ];
  home.file.".config/vesktop/themes/midnight-tokyo-night-renogare.theme.css".source =
    ./midnight-tokyo-night-renogare.theme.css;
  home.file.".config/vesktop/settings/quickCss.css".source = ./quickCss.css;
  home.file.".config/vesktop/settings/settings.json".source = ./settings.json;
}
