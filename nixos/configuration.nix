{ inputs, ... }: {
  imports = [
    ./hardware-configuration.nix
    ./users.nix
    ./services.nix
    ./terminal.nix
    ./home-manager.nix
    ./steam.nix
    ./networking.nix
  ];

  # boot
  boot.loader.systemd-boot.enable = true;

  # nix
  nix = {
    settings = {
      experimental-features = "nix-command flakes";
      flake-registry = "";
    };
    channel.enable = false;
  };
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

  # system
  system.stateVersion = "26.05"; # https://nixos.wiki/wiki/FAQ/When_do_I_update_stateVersion
}
