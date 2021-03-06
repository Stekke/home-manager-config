{ config, pkgs, lib, ... }:
{
  imports = [
    ../common.nix
    ../packages/text.nix
    ../packages/kde.nix
    ../programs/git.nix
    ../accounts/work_vcs.nix
  ];

  news.display = "notify";
  fonts.fontconfig.enable = true;
  home = {
    username = "sdw";
    homeDirectory = "/home/sdw";
    extraOutputsToInstall = [ "doc" "devdoc" ];
    stateVersion = "21.03";
    packages = with pkgs; [
      firefox # browse the web
      wineWowPackages.stable winetricks # Run windows binaries
      manpages stdmanpages
      gparted # hard disk partition editor
      ghidra-bin # reverse engineering software
      lm_sensors # Read system temperature
      virt-manager # for virtual machines
      gimp # Image editor
      vlc # Media player
      ffmpeg # video converter
      teams # Windows chat
      
      # fonts
      source-code-pro
    ];
  };

  nixpkgs.config = {
    allowUnfree = true;
  };
}
