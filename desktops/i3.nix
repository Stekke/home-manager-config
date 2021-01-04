{pkgs, config, ...}:
{
  home.packages = with pkgs; [
    i3status # desktop status bar
    rofi # app launcher
    alacritty # terminal
    pavucontrol # pulseaudio volume control, gtk
    pamix # pulseaudio cli mixer
    ncpamixer # another pulseaudio cli mixer
    scrot # screenshots

    # fonts
    terminus_font
    terminus_font_ttf
    b612
    spleen
    corefonts # MS fonts for wine
    font-awesome # icons

    # theming
    gtk-engine-murrine
    theme-vertex
    materia-theme
    arc-icon-theme
  ];

  fonts.fontconfig.enable = true;

  services = {
    dunst.enable = true;
    udiskie.enable = true;

    unclutter = {
      enable = true;
      extraOptions =  [ "exclude-root" "ignore-scrolling" ];
    };
  };

  xsession = {
    enable = true;
    windowManager.i3 = {
      enable = true;
      package = pkgs.i3-gaps;
      config = {
        fonts = [ "FontAwesome 10" "B612 10" ];
        gaps.inner = 10;
        gaps.outer = 0;
        gaps.smartBorders = "off";
        gaps.smartGaps = true;
        modifier = "Mod4";
        menu = "${pkgs.rofi}/bin/rofi -show run";
        terminal = "alacritty";
        window.hideEdgeBorders = "both";
        workspaceLayout = "tabbed";
        startup = [
          { command = "i3-msg 'workspace 1; append_layout /home/stijn/.config/i3/workspace-1.json'"; }
          { command = "i3-msg 'workspace 2; append_layout /home/stijn/.config/i3/workspace-2.json'"; }
          { command = "i3-msg 'workspace 3; append_layout /home/stijn/.config/i3/workspace-3.json'"; }
          { command = "i3-msg 'workspace 4; append_layout /home/stijn/.config/i3/workspace-4.json'"; }
          { command = "xsetroot -solid '#272822'"; }
          { command = "thunderbird"; }
          { command = "firefox"; }
          { command = "Discord"; }
          { command = "telegram-desktop"; }
        ];
        bars = [{
          colors.background = "#272822";
          fonts = [ "B612 9" ];
        }];
      };
    };
  };
}
