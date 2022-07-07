{
  inputs = {
    nixpkgs.url = "nixpkgs/master";
  };

  outputs = { self, nixpkgs }:
    let
      inherit (nixpkgs) lib;
      inherit (lib) genAttrs;
      systems = [ "x86_64-linux" "x86_64-darwin" ];
      pkgs = genAttrs systems (system: import nixpkgs { inherit system; });
    in
    {
      packages = genAttrs systems (system:
        let
          pkgs' = pkgs.${system};
          yonvim-lua = pkgs'.callPackage ./packages/yonvim-lua { };
          yonvim = pkgs'.callPackage ./packages/yonvim { inherit yonvim-lua; };
          yonvim-qt = pkgs'.callPackage ./packages/yonvim-qt { inherit yonvim; };
        in
        { inherit yonvim-lua yonvim yonvim-qt; });

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
