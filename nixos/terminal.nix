{ pkgs, ... }: {
  # system-wide packages
  environment.systemPackages = with pkgs; [
    vim
    wget
    git
    nano
  ];
  environment.variables.EDITOR = "nano";

  # setup nushell globally
  environment.shells = [
    pkgs.nushell
  ];
  programs.bash.interactiveShellInit = ''
    if ! [ "$TERM" = "dumb" ] && [ -z "$BASH_EXECUTION_STRING" ]; then
      exec nu
    fi
  '';
}
