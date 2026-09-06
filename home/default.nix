{ inputs, lib, config, pkgs, ... }: {
  imports = [
    ./cli-apps
    ./vesktop
    ./vscodium
    ./desktop-apps.nix
    ./games.nix
    ./git.nix
    ./network.nix
    ./obs.nix
  ];

  # nix stuff
  nixpkgs = {
    overlays = [
      inputs.self.overlays.additions
      inputs.self.overlays.modifications
      inputs.self.overlays.unstable-packages
    ];
    config = {
      allowUnfree = true;
    };
  };

  # home-manager config
  home = {
    username = "aonkeeper4";
    homeDirectory = "/home/aonkeeper4";
  };
  home.stateVersion = "26.05"; # should match `system.stateVersion`

  # required for home-manager
  programs.home-manager.enable = true;
  programs.git.enable = true;
}
