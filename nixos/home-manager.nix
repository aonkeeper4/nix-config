{ inputs, ... }: {
  imports = [
    inputs.home-manager.nixosModules.home-manager
  ];

  home-manager = {
    users = {
      aonkeeper4 = import ../home;
    };

    extraSpecialArgs = { inherit inputs; };
    sharedModules = [
      inputs.sops-nix.homeManagerModules.sops
    ];
  };
}
