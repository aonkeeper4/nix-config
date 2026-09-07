{ pkgs, ... }: {
  # rider
  home.packages =
    with pkgs;
    with nix-jetbrains-plugins.lib;
    [
      (buildIdeWithPlugins pkgs "rider" [
        "LJYXP.ColorBrackets"
        "color.scheme.Tokyo Night"
        "com.mallowigi.colorHighlighter"
      ])
    ];
}
