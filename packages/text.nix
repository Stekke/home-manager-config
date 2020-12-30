{pkgs, ...}:
{
  home.packages = with pkgs; [
    # text editing
    emacs
    # text searching
    silver-searcher ripgrep
    # spell checking
    ispell nuspell aspell
    # dictionaries
    aspellDicts.en aspellDicts.nl
  ];
}
