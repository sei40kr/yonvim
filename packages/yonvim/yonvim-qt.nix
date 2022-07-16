{ makeWrapper
, neovim-qt
, symlinkJoin
, writeShellScriptBin
, yonvim
}:

let
  version = import ./version.nix;

  neovim-qt-configured = neovim-qt.override {
    neovim = yonvim;
  };
  yonvim-qt-bin = writeShellScriptBin "yvim-qt" ''
    exec ${neovim-qt-configured}/bin/nvim-qt --nvim ${yonvim}/bin/yvim -- "$@"
  '';
in
symlinkJoin
{
  name = "yonvim-qt-${version}";

  paths = [ neovim-qt-configured ];

  nativeBuildInputs = [ makeWrapper ];

  postBuild = ''
    rm $out/bin/nvim-qt
    cp ${yonvim-qt-bin}/bin/yvim-qt $out/bin/yvim-qt
  '';
}
