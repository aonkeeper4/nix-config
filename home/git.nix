{ pkgs, ... }: {
  # git
  home.packages = with pkgs; [
    git
    lazygit
  ];
  programs.git = {
    enable = true;
    settings = {
      user = {
        name = "aonkeeper4";
        email = "aonkeeper4@gmail.com";
      };

      init.defaultBranch = "main";
      pull.rebase = true;
      push.autoSetupRemote = true;

      color.ui = "auto";
    };
  };
}
