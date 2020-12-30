{ config, pkgs, lib, ...}:
{
  imports = [
    programs/common.nix
    packages/common.nix
  ];

  home = {
    language = {
      base = "nl_BE.UTF-8";
      messages = "en_US.UTF-8";
    };
    sessionVariables = {
      EDITOR = "kak";
    };
  };

  systemd.user.sessionVariables = {
    EDITOR = "kak";
  };
}
