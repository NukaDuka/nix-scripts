let
sources = import ./nix/sources.nix;
pkgs = import sources.nixpkgs {};
in
with pkgs;
[
	# place packages to test in here
]
