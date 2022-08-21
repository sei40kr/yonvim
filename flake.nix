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
          yonvimPlugins = pkgs'.callPackage ./packages/yonvim/plugins/generated.nix { };
          yonvim-lua = pkgs'.callPackage ./packages/yonvim-lua { inherit yonvimPlugins; };
          yonvim = pkgs'.callPackage ./packages/yonvim/yonvim.nix {
            inherit yonvim-lua yonvimPlugins;
          };
          yonvim-qt = pkgs'.callPackage ./packages/yonvim/yonvim-qt.nix {
            inherit yonvim;
          };
        in
        { inherit yonvim-lua yonvim yonvim-qt yonvimPlugins; });

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
            export YVIM_CACHE_DIR=$(mktemp -d)
            export YVIM_RUNTIME_DIR=$(mktemp -d)
            export YVIM_PACKER_PACKAGE_ROOT=$(mktemp -d)
            export YVIM_PACKER_COMPILE_PATH=$(mktemp -d)

            _clean() {
              rm -rf $YVIM_CACHE_DIR \
                     $YVIM_RUNTIME_DIR \
                     $YVIM_PACKER_PACKAGE_ROOT \
                     $YVIM_PACKER_COMPILE_PATH
            }

            trap _clean EXIT
          '';
        });
    };
}
