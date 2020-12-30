{...}:
{
  imports = [
    ../common.nix
    ../packages/text.nix
  ];

  home.homeDirectory = /home/stijnd;
  news.display = "notify";
  nixpkgs.config = {
    allowUnfree = true;
  };
}
