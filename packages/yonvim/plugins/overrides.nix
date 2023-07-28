{}:

self: super: {
  lazy-nvim = super.lazy-nvim.overrideAttrs (_old: {
    patches = [
      # Don't generate helptags at runtime
      ./lazy-nvim_helptags.patch
    ];
  });
}
