{
  inputs = {
    nixpkgs.url = "nixpkgs/master";
  };

  outputs = { self, nixpkgs }:
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

      devShell = genAttrs systems (system:
        let
          inherit (pkgs.${system}) mkShell;
        in
        mkShell {
          buildInputs = [ self.packages.${system}.yonvim ];
          shellHook = "nvim";
        });
    };
}
