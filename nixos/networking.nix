{ pkgs, ... }:
let
  mullvad-autostart = pkgs.makeAutostartItem {
    name = "mullvad-vpn";
    package = pkgs.mullvad-vpn;
  };
in
{
  # networking
  networking.hostName = "laptop-nixos";
  networking.networkmanager.enable = true;

  # vpn
  environment.systemPackages = [
    mullvad-autostart
  ];
}
