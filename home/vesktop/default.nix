{ pkgs, ... }: {
  # vesktop
  home.packages = with pkgs; [
    vesktop
  ];
  home.file.".config/vesktop/themes/midnight-tokyo-night-renogare.theme.css" =
    ./midnight-tokyo-night-renogare.theme.css;
  home.file.".config/vesktop/settings/quickCss.css" = ./quickCss.css;
  home.file.".config/vesktop/settings/settings.json" = ./settings.json;
}
