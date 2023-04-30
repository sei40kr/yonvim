{ lib
, makeDesktopItem
, neovim-qt
, stdenv
, symlinkJoin
, writeShellScriptBin
, writeText
, yonvim
}:

let
  version = import ./version.nix;

  neovim-qt-overridden = neovim-qt.override {
    # Only used to generate help tags at build time
    neovim = yonvim;
  };
  yonvim-qt-bin = writeShellScriptBin "yonvim-qt" ''
    exec ${neovim-qt-overridden}${if stdenv.isDarwin then "/Applications/nvim-qt.app/Contents/MacOS" else "/bin"}/nvim-qt \
         --nvim ${yonvim}/bin/yonvim \
         -- \
         "$@"
  '';
  desktopItem = makeDesktopItem {
    name = "yonvim-qt";
    desktopName = "Yonvim";
    comment = "Qt GUI for Neovim text editor";
    icon = "nvim-qt";
    exec = "yonvim-qt -- %F";
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
    startupWMClass = ".nvim-qt-wrapped";
  };
  infoPlist = writeText "Info.plist" (lib.generators.toPlist { } {
    CFBundleDevelopmentRegion = "English";
    CFBundleExecutable = "yonvim-qt";
    CFBundleDisplayName = "Yonvim";
    CFBundleGetInfoString = "Yonvim Qt GUI";
    CFBundleIconFile = "neovim";
    NSHighResolutionCapable = true;
    CFBundleIdentifier = "neovim-qt";
    CFBundleInfoDictionaryVersion = "6.0";
    CFBundleLongVersionString = "0.2.16.1";
    CFBundleVersion = "";
    CSResourcesFileMapped = true;
    LSRequiresCarbon = true;
    NSHumanReadableCopyright = "";
    CFBundleDocumentTypes = [{
      CFBundleTypeName = "All Files";
      CFBundleTypeRole = "Editor";
      LSHandlerRank = "Alternate";
      LSItemContentTypes = "public.item";
    }];
  });
in
symlinkJoin
{
  name = "yonvim-qt-${version}";

  paths = [ neovim-qt-overridden ];

  postBuild =
    if stdenv.isDarwin then ''
      app=$out/Applications/yonvim-qt.app
      mv $out/Applications/nvim-qt.app $app

      rm $app/Contents/MacOS/*
      install -m755 ${yonvim-qt-bin}/bin/yonvim-qt $app/Contents/MacOS

      rm $app/Contents/Info.plist
      install -m644 ${infoPlist} $app/Contents
    '' else ''
      rm $out/bin/*
      install -m755 ${yonvim-qt-bin}/bin/yonvim-qt $out/bin

      rm -r $out/share/applications
      install -Dm644 ${desktopItem}/share/applications/yonvim-qt.desktop \
                     $out/share/applications/yonvim-qt.desktop
    '';
}
