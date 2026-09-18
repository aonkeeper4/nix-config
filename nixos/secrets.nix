{ pkgs, ... }: {
  # secrets
  environment.systemPackages = with pkgs; [
    sops
    age
  ];
}
