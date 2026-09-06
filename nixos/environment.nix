{ pkgs, ... }: {
  environment.systemPackages = with pkgs; [
    vim
    wget
    git
    nano
  ];
  environment.variables.EDITOR = "nano";
}
