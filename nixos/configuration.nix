{ inputs, lib, config, pkgs, ... }: {
  imports = [
    ./hardware-configuration.nix
    ./users.nix
    ./environment.nix
    ./home-manager.nix
  ];

  # boot
  boot.loader.systemd-boot.enable = true;

  # services
  networking.hostName = "laptop-nixos";
  networking.networkmanager.enable = true;
  services.printing.enable = true;
  services.pipewire = {
    enable = true;
    pulse.enable = true;
  };
  services.libinput.enable = true; # touchpad support
  services.openssh.enable = true;
  services.desktopManager.plasma6.enable = true;
  services.displayManager.plasma-login-manager.enable = true;

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
