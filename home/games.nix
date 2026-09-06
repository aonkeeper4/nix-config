{ pkgs, ... }: {
  # games
  programs = {
    steam.enable = true;
    gamemode.enable = true;
    lutris.enable = true;
  };
  home.packages = with pkgs; [
    mumble
    olympus
    prismlauncher
    protonup-rs
  ];

  # celeste modding
  home.packages = with pkgs; [
    avalonia-ilspy

    dotnet-sdk_10
    dotnet-runtime_8
    dotnet-runtime_10
    mono
  ];
  environment.sessionVariables = {
    DOTNET_SYSTEM_GLOBALIZATION_INVARIANT = 1;
  };

  # opus magnum modding
  # todo: it would be really awesome if we could put quintessential on nixpkgs at some point
}
