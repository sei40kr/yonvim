{ makeDesktopItem
, makeWrapper
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
  yvim-qt-bin = writeShellScriptBin "yvim-qt" ''
    exec ${neovim-qt-configured}/bin/nvim-qt --nvim ${yonvim}/bin/yvim -- "$@"
  '';
  yvim-qt-desktop = makeDesktopItem {
    name = "yvim-qt";
    desktopName = "Yonvim";
    comment = "Qt GUI for Neovim text editor";
    icon = "nvim-qt";
    exec = "yvim-qt -- %F";
    mimeTypes = [
      "text/english"
      "text/plain"
      "text/x-makefile"
      "text/x-c++hdr"
      "text/x-c++src"
      "text/x-chdr"
      "text/x-csrc"
      "text/x-java"
      "text/x-moc"
      "text/x-pascal"
      "text/x-tcl"
      "text/x-tex"
      "application/x-shellscript"
      "text/x-c"
      "text/x-c++"
    ];
    terminal = false;
    categories = [ "Utility" "TextEditor" ];
  };
in
symlinkJoin
{
  name = "yonvim-qt-${version}";

  paths = [ neovim-qt-configured yvim-qt-bin ];

  nativeBuildInputs = [ makeWrapper ];

  postBuild = ''
    rm $out/bin/nvim-qt
    rm -r $out/share/applications
    mkdir $out/share/applications
    cp ${yvim-qt-desktop}/share/applications/yvim-qt.desktop \
       $out/share/applications
  '';
}
