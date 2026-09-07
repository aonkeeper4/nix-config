{ lib, ... }: {
  # services
  services.printing.enable = true;
  services.pipewire = {
    enable = true;
    pulse.enable = true;
  };
  services.libinput.enable = true; # touchpad support
  services.openssh.enable = true;
  services.desktopManager.plasma6.enable = true;
  services.displayManager.plasma-login-manager.enable = true;
  systemd.services.power-profiles-daemon.enable = lib.mkForce false;
}
