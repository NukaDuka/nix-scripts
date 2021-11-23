{
	sources ? import ./nix/sources.nix,
	pkgs ? import sources.nixpkgs {}
}:
let 
packages = with pkgs; import ./package-list.nix;
in
pkgs.mkShell {
	buildInputs = with pkgs; [
		niv	
	] ++ packages;
	shellHook = ''
		export nixpkgs=${sources.nixpkgs.outPath}
	'';
}
