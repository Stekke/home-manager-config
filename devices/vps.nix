{ config, pkgs, lib, ... }:
{
  imports = [
    ../common.nix
    ../programs/git.nix
  ];

  news.display = "notify";
  home = {
    homeDirectory = /home/stekke;
    stateVersion = "20.03";
    packages = with pkgs; [
      ncat appimage-run
    ];
  };

  # Openra server
  systemd.user.services = {
    openra = {
      Unit = {
        Description = "Openra server";
      };

      Service = {
        Type = "simple";
        ExecStart = "${pkgs.appimage-run}/bin/appimage-run OpenRA-Red-Alert-x86_64.AppImage --server Server.Name='Explosive Pulsecore' Server.ListenPort=1666 Server.AdvertiseOnline=True";
      };
    };
  };
}
