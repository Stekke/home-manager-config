{pkgs, ...}:
{
  home.packages = with pkgs; [
    picolisp
    tcl
    guile
    factor-lang
    manpages
    stdmanpages
  ];
}
