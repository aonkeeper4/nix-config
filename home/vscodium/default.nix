{ pkgs, ... }: {
  # vscodium
  programs.vscodium = {
    enable = true;
    package = pkgs.vscodium;
    profiles.default.extensions =
      pkgs.nix4vscode.forVscode [
        # themes
        "enkia.tokyo-night"

        # lsps
        "JetBrains.resharper-code"
        "ms-python.python"
        "ms-python.debugpy"
        "ms-toolsai.jupyter"
        "sumneko.lua"
        "jnoortheen.nix-ide"

        # misc
        "naumovs.color-highlight"
        "esbenp.prettier-vscode"
      ];
  };
  home.file."VSCodium/User/settings.json".source = ./settings.json;
  home.file."VSCodium/User/keybindings.json".source = ./keybindings.json;
}
