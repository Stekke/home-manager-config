{ config, pkgs, lib, ...}:
{
  services.gpg-agent = {
    enable = true;
    defaultCacheTtl = 3600; # remember entered password for 1 hour, reset timer when used again
    defaultCacheTtlSsh = 3600; # remember entered password for 1 hour, reset timer when used again
    maxCacheTtl = 18000; # always expire password cache after 5 hours from first use
    enableSshSupport = true;
  };

  programs.gpg = {
    enable = true;
  };
}
