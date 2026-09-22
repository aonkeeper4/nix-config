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

      init.defaultBranch = "dev";
      pull.ff = true;
      push.autoSetupRemote = true;

      color.ui = "auto";
    };
  };

  programs.gh = {
    enable = true;
    gitCredentialHelper = {
      enable = true;
    };
  };
}
