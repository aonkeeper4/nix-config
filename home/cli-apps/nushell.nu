# common ls aliases and sort them by type and then name
# inspired by https://github.com/nushell/nushell/issues/7190
def lla [...args] { ls -la ...(if $args == [] {["."]} else {$args}) | sort-by type name -i }
def la  [...args] { ls -a  ...(if $args == [] {["."]} else {$args}) | sort-by type name -i }
def ll  [...args] { ls -l  ...(if $args == [] {["."]} else {$args}) | sort-by type name -i }
def l   [...args] { ls     ...(if $args == [] {["."]} else {$args}) | sort-by type name -i }

# carapace completions https://www.nushell.sh/cookbook/external_completers.html#carapace-completer
# + fix https://www.nushell.sh/cookbook/external_completers.html#err-unknown-shorthand-flag-using-carapace
let carapace_completer = {|spans: list<string>|
  carapace $spans.0 nushell ...$spans
    | from json
    | if ($in | default [] | where value == $"($spans | last)ERR" | is-empty) { $in } else { null }
}
# some completions are only available through a bridge
# eg. tailscale
# https://carapace-sh.github.io/carapace-bin/setup.html#nushell
$env.CARAPACE_BRIDGES = 'zsh,fish,bash,inshellisense'

$env.config = {
  show_banner: false,
  completions: {
    case_sensitive: false # case-sensitive completions
    quick: true           # set to false to prevent auto-selecting completions
    partial: true         # set to false to prevent partial filling of the prompt
    algorithm: "fuzzy"    # prefix or fuzzy
    external: {
      # set to false to prevent nushell looking into $env.PATH to find more suggestions
      enable: true
      # set to lower can improve completion performance at the cost of omitting some options
      max_results: 50
      completer: $carapace_completer
    }
  }
}

$env.PATH = ($env.PATH |
  split row (char esep) |
  prepend /home/aonkeeper4/.apps |
  append /usr/bin/env
)

# enable starship
$env.STARSHIP_SHELL = "nu"
mkdir ($nu.data-dir | path join "vendor/autoload")
starship init nu | save -f ($nu.data-dir | path join "vendor/autoload/starship.nu")
