{ ... }: {
  # services
  services.printing.enable = true;
  services.pipewire = {
    enable = true;
    pulse.enable = true;
  };
  services.libinput.enable = true; # touchpad support
  services.openssh.enable = true;
}
