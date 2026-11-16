{ inputs, pkgs, ... }: {
  # games
  home.packages = with pkgs; [
    # minecraft
    prismlauncher

    # celeste modding
    olympus
    avalonia-ilspy
    dotnet-sdk_8
    dotnet-runtime_8
    dotnet-sdk_10
    dotnet-runtime_10
    mono

    # opus magnum modding
    inputs.mod-om.packages.${pkgs.stdenv.hostPlatform.system}.default

    # proton
    protonup-rs
  ];
}
