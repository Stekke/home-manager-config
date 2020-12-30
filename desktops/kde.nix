{pkgs, config, ...}:
{
  home.packages = with pkgs; [
  ];

  #fonts.fontconfig.enable = true;

  services = {
    #unclutter = {
    #  enable = true;
    #  extraOptions =  [ "exclude-root" "ignore-scrolling" ];
    #};
  };

  xsession = {
    enable = true;
    windowManager = pkgs.plasma5.startkde;
  };
}
