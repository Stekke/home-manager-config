{ config, pkgs, lib, ...}:

let
  pkgsUnstable = import <nixpkgs-unstable> {};

in
{
  imports = [
    ../common.nix

    ../desktops/i3.nix
    ../desktops/xdg.nix

    ../accounts/mail.nix
    ../accounts/ssh.nix

    ../packages/text.nix
    ../packages/games.nix
    ../packages/programming.nix

    ../programs/gpg.nix
    ../programs/git.nix
  ];

  news.display = "show";

  programs = {
    password-store.enable = true; # password manager
    mpv.enable = true; # Video player, in case VLC doesn't work
    qutebrowser.enable = true; # keyboard driven web browser
    chromium.enable = true; # Alternative web browser
  };

  home = {
    extraOutputsToInstall = [ "doc" "info" "devdoc" ]; # also install documentation alongside the applications
    homeDirectory = /home/stijn;
    stateVersion = "20.03";

    packages = with pkgs; [
      # Wine
      # (pkgsUnstable.wine.override { wineBuild = "wine32"; wineRelease = "staging"; odbcSupport = true; } )

      # misc
      obs-studio # Desktop recording/streaming
      gparted # hard disk partition editor
      steam-run # for running non-nixos linux binaries
      xsane # scanner
      # ghidra-bin # reverse engineering software

      # System administration
      virt-manager # for virtual machines
      cool-retro-term # Retro looking terminal
      smartmontools # View hard drive SMART data
      pkgsUnstable.bcachefs-tools # Tools for bcachefs filesystem

      # graphics
      mypaint # Simple painting
      krita # Advanced painting
      gimp # Image editor
      blender # 3D software suite
      aseprite # Pixel art editor
      darktable # RAW Image processor
      gcolor3 # Color picker
      solvespace # 3D modeler with constraint solving

      # web
      firefox # web-browser
      thunderbird # email

      # version control
      mercurial

      # chat
      tdesktop # Telegram
      pkgsUnstable.discord # Discord
      nheko # Matrix

      # media
      youtube-dl # Download video's from websites
      nomacs # Image viewer
      evince # pdf viewer
      vlc # Media player
      ffmpeg # video converter
    ];
  };
}
