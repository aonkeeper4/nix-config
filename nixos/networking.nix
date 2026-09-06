{ ... }: {
  # networking
  networking.hostName = "laptop-nixos";
  networking.networkmanager.enable = true;

  # vpn
  services.mullvad-vpn.enable = true;
}
