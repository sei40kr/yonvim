{
  inputs = {
    nixpkgs.url = "nixpkgs/master";
  };

  outputs = { nixpkgs, ... }:
    let
      inherit (nixpkgs) lib;
      inherit (lib) genAttrs;
      systems = [ "x86_64-linux" ];
      pkgs = genAttrs systems (system: import nixpkgs { inherit system; });
    in
    {
      packages = genAttrs systems (system: {
        yonvim = pkgs.${system}.callPackage ./packages/yonvim.nix { };
      });
    };
}
