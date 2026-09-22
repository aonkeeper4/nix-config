{ ... }: {
  # audio
  services.pipewire = {
    enable = true;
    pulse.enable = true;
  };

  # x11
  services.xserver.enable = true;
  services.xserver.layout = "gb";

  # misc
  services.printing.enable = true;
  services.libinput.enable = true; # touchpad support
  services.openssh.enable = true;
}
