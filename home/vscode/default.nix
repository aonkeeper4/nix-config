{ pkgs, ... }: {
  # vscodium
  programs.vscode = {
    enable = true;
    profiles.default.extensions = with pkgs.vscode-extensions; [
      # themes
      enkia.tokyo-night

      # lsps
      ms-python.python
      ms-python.debugpy
      ms-toolsai.jupyter
      sumneko.lua
      jnoortheen.nix-ide

      # misc
      naumovs.color-highlight
      esbenp.prettier-vscode
    ] ++ pkgs.vscode-utils.extensionsFromVscodeMarketplace [
      {
        name = "resharper-code";
        publisher = "JetBrains";
        version = "2026.2.2";
        sha256 = "sha256-zMI0X7dvimbtv5mjS2t7IhpRZ5tYLK+8cTcHQbcMdgI=";
      }
    ];
  };
  home.file.".config/Code/User/settings.json".source = ./settings.json;
  home.file.".config/Code/User/keybindings.json".source = ./keybindings.json;
}
