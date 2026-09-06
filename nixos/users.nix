{ pkgs, ... }: {
  # users
  users.users.aonkeeper4 = {
    isNormalUser = true;
    extraGroups = [ "wheel" "networkmanager" ];
  };
}
