{ inputs, pkgs, ... }: {
  # games
  home.packages = with pkgs; [
    # minecraft
    prismlauncher

    # celeste modding
    olympus
    avalonia-ilspy
    (
      with dotnetCorePackages;
      combinePackages [
        sdk_8_0
        sdk_10_0
      ]
    )
    mono

    # opus magnum modding
    inputs.mod-om.packages.${pkgs.stdenv.hostPlatform.system}.default

    # proton
    protonup-rs
  ];
}
