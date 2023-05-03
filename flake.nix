{
  inputs = {
    nixpkgs.url = "nixpkgs/master";
  };

  outputs = { self, nixpkgs }:
    let
      inherit (nixpkgs) lib;
      inherit (lib) genAttrs;
      systems = [ "x86_64-linux" "x86_64-darwin" "aarch64-darwin" ];
      pkgs = genAttrs systems (system: import nixpkgs { inherit system; });
    in
    {
      packages = genAttrs systems (system:
        let
          pkgs' = pkgs.${system};
          yonvimPlugins = pkgs'.callPackage ./packages/yonvim/plugins { };
          yonvim-lua = pkgs'.callPackage ./packages/yonvim-lua { inherit yonvimPlugins; };
          yonvim-lazy-files = pkgs'.callPackage ./packages/yonvim/yonvim-lazy-files.nix {
            inherit yonvim-lua yonvimPlugins;
          };
          yonvim = pkgs'.callPackage ./packages/yonvim/yonvim.nix {
            inherit yonvim-lazy-files yonvim-lua yonvimPlugins;
          };
          yonvim-qt = pkgs'.callPackage ./packages/yonvim/yonvim-qt.nix {
            inherit yonvim;
          };
        in
        { inherit yonvim-lua yonvim-lazy-files yonvim yonvim-qt yonvimPlugins; });

      devShell = genAttrs systems (system:
        let
          inherit (pkgs.${system}) mkShell;
        in
        mkShell {
          buildInputs = [
            self.packages.${system}.yonvim
            self.packages.${system}.yonvim-qt
          ];
          shellHook = ''
            export XDG_CACHE_HOME=$(mktemp -d)
            export XDG_DATA_HOME=$(mktemp -d)
            export XDG_STATE_HOME=$(mktemp -d)

            _clean() {
              rm -rf $XDG_CACHE_HOME $XDG_DATA_HOME $XDG_STATE_HOME
            }

            trap _clean EXIT
          '';
        });
    };
}
