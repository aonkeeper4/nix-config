{ inputs, pkgs, ... }: {
  # rider
  home.packages =
    with pkgs;
    with inputs.nix-jetbrains-plugins.lib;
    [
      (buildIdeWithPlugins pkgs "rider" [
        "color.scheme.Tokyo Night"
        "com.mallowigi.colorHighlighter"
      ])
    ];
}
