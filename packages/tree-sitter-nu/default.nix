{ fetchFromGitHub, tree-sitter }:

# FIXME: The official Nushell Treesitter grammar doesn't have syntax
#  highlighting at the moment (2024/05/29). This is an unofficial grammar
#  that has some syntax highlighting for Nushell ~0.45.
tree-sitter.buildGrammar {
  language = "nu";
  version = "unstable-2023-10-01";
  src = fetchFromGitHub {
    owner = "LhKipp";
    repo = "tree-sitter-nu";
    rev = "ef943c6f2f7bfa061aad7db7bcaca63a002f354c";
    hash = "sha256-U7IHAXo3yQgbLv7pC1/dOa/cXte+ToMc8QsDEiCMSRg=";
  };
  meta.homepage = "https://github.com/LhKipp/tree-sitter-nu";
}
