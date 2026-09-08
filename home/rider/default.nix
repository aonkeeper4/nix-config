{ inputs, pkgs, ... }: {
  # rider
  home.packages = with inputs.nix-jetbrains-plugins.lib; [
    (buildIdeWithPlugins pkgs "rider" [
      "com.plsft.tokyonight"
      "com.mallowigi.colorHighlighter"
      "com.intellij.resharper.HeapAllocationsViewer"
    ])
  ];
}
