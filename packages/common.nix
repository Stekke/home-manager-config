{pkgs, ...}:
{
  home.packages = with pkgs; [
    # Posix replacements
    fd # find
    exa # ls
    du-dust # du
    bat # cat
    procs # ps
    sd # sed

    # Handy utils
    bc # calculator
    units # unit conversion
    nmap # network scanner
    broot # file list/searcher/manager
    hexyl # hex viewer
    lsof # list open file descriptors
    glances # system monitor
    dstat # system monitor

    # File management
    ranger # file browser
    atool # frontend to archivers
    file # print file format info
    zip unzip gnutar p7zip gnutar # archive formats

    # encryption / connectivity stuff
    wireguard-tools # VPN tools
    inetutils # random useful programs (telnet/ftp/...)
    encfs # FUSE based encrypted filesystem
    cryptsetup # manage dm-crypt devices (LUKS encryption)
  ];
}
