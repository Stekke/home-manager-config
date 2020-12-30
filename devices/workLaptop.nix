{ config, pkgs, lib, ... }:
{
  imports = [
    ../common.nix
    ../packages/text.nix
    ../programs/git.nix
  ];

  home.homeDirectory = /home/stijnd;
  news.display = "notify";
  nixpkgs.config = {
    allowUnfree = true;
  };
}
