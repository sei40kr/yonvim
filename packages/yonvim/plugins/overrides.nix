{}:

self: super: {
  lazy-nvim = super.lazy-nvim.overrideAttrs (_old: {
    patches = [
      # Don't generate helptags at runtime
      ./lazy-nvim_helptags.patch
    ];
  });

  lazy-nvim_readOnly = self.lazy-nvim.overrideAttrs ({ patches, ... }: {
    patches = patches ++ [
      # Don't autosave cache at runtime
      ./lazy-nvim_cache.patch
    ];
  });
}
