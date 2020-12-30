{ config, pkgs, lib, ... }:
{
  imports = [
    ../common.nix
    ../programs/git.nix
  ];

  news.display = "notify";
  home = {
    homeDirectory = /home/stijn;
    stateVersion = "20.03";
    packages = with pkgs; [
      lm_sensors # Read system temperature
      dmidecode # Read system info
      youtube-dl # Download video's from websites
      hdparm # view hard drive parameters and test performance
      smartmontools # View hard drive SMART data
    ];
  };
}
