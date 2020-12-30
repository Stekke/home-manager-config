{pkgs, ...}:
{
  home.packages = with pkgs; [
    steam
    minecraft
    openttd
    gzdoom
    doomseeker
    # zandronum
    # openra # outdated
    # the-powder-toy
    # dwarf-fortress-packages.dwarf-fortress-full
    dosbox
    factorio # requires keys to be configured in config.nix
    appimage-run # to run openra appimage
  ];
}
