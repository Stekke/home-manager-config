{ config, pkgs, lib, ...}:
{
  programs.git = {
    enable = true;
    package = pkgs.gitAndTools.gitFull;
    userName = "Stekke";
    userEmail = "develop@rinsa.eu";
    delta.enable = true;
  };
}
