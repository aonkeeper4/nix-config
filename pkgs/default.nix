pkgs: {
  renogare = pkgs.callPackage ./renogare.nix { inherit pkgs; };
  resharper-vscode = pkgs.callPackage ./resharper-vscode.nix { inherit pkgs; };
}
