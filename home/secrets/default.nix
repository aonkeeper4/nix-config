{ config, ... }: {
  sops = {
    age.keyFile = "/home/aonkeeper4/.config/sops/age/keys.txt"; # must have no password!

    defaultSopsFile = ./secrets.yaml;
    defaultSymlinkPath = "/run/user/1000/secrets";
    defaultSecretsMountPoint = "/run/user/1000/secrets.d";

    secrets.github_token = {
      # sopsFile = ./secrets.yml.enc; # optionally define per-secret files
      path = "${config.sops.defaultSymlinkPath}/github_token";
    };
  };
}
