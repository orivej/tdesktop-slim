{
  packageOverrides = pkgs: rec {
    tdesktop = pkgs.stdenv.lib.overrideDerivation pkgs.tdesktop (oldAttrs: {
      patches = oldAttrs.patches ++ [
        ./tdesktop-slim/0001-Delete-emoji-button.patch
        ./tdesktop-slim/0002-ISO-date.patch
        ./tdesktop-slim/0003-No-stickers.patch
        ./tdesktop-slim/0004-Display-dialog-list-items-on-a-single-line.patch
        ./tdesktop-slim/0005-Sort-dialogs-by-name.patch
        ./tdesktop-slim/0006-Delete-verified-icon-in-the-dialog-list.patch
        ./tdesktop-slim/0007-Unlimited-message-width.patch
      ];
    });
  };
}
