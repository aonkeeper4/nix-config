{ pkgs, ... }: {
  # vscode
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
      thenuprojectcontributors.vscode-nushell-lang
      pkgs.resharper-vscode

      # misc
      naumovs.color-highlight
      esbenp.prettier-vscode
    ];
  };
  home.file.".config/Code/User/settings.json".source = ./settings.json;
  home.file.".config/Code/User/keybindings.json".source = ./keybindings.json;
}
