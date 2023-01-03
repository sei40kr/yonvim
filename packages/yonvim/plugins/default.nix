{ callPackage, lib }:

let
  inherit (lib) extends makeExtensible;
  plugins = callPackage ./generated.nix { };
  overrides = callPackage ./overrides.nix { };
  extensible-self = makeExtensible (extends overrides plugins);
in
extensible-self
