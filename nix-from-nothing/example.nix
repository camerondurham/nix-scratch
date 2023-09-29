# Example 1
# # run with:
# # nix-instantiate example.nix
# builtins.derivation {
# 	name = "my-derivation";
# 	system = "x86_64-darwin";
# 	builder = "/bin/sh";
# 	args = ["-c" "echo Hello > $out" ];
# }

# Example 2

# run with nix build --file ./example.nix

# result will be in "result"
# cat result
# Hello

let 
	pkgs = import <nixpkgs> {};
in
pkgs.runCommand "my-derivation" {} ''
echo Hello > $out
''
