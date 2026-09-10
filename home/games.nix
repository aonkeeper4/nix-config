{ pkgs, ... }: {
  # games
  home.packages = with pkgs; [
    # minecraft
    prismlauncher

    # celeste modding
    olympus
    avalonia-ilspy
    dotnet-sdk_10
    dotnet-runtime_10
    mono
    wine

    # opus magnum modding
    # todo: it would be really awesome if we could put quintessential on nixpkgs at some point

    # proton
    protonup-rs
  ];
}
