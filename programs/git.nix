{ config, pkgs, lib, ...}:
let
  gui = config.xsession.enable;
in
{
  programs.git = {
    enable = true;
    package = if gui then pkgs.gitAndTools.gitFull else pkgs.gitAndTools.git;
    delta.enable = gui;
  };
}
