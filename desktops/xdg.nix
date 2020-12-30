{...}:
{
  xdg.mime.enable = true;
  #xdg.configFile."nixpkgs/config.nix".source = ./nixpkgs-config.nix;
  xdg.mimeApps.enable = true;
  xdg.mimeApps.defaultApplications = {
    "text/html" = [ "firefox.desktop" ];
    "text/*" = [ "emacs.desktop" ];
    "audio/*" = [ "vlc.desktop" ];
    "video/*" = [ "vlc.dekstop" ];
    "image/*" = [ "ahoviewer.desktop" ];
    "application/x-abiword" = [ "abiword.desktop" ]; # ".abw"  AbiWord document  
    "text/calendar" = [ "thunderbird.desktop" ]; # ".ics"  iCalendar format  
    "application/json" = [ "emacs.desktop" ]; # ".json"  JSON format  
    "application/pdf" = [ "evince.desktop" ]; # ".pdf"  Adobe Portable Document Format (PDF)
    "x-scheme-handler/http" = [ "firefox.desktop" ];
    "x-scheme-handler/https" = [ "firefox.desktop" ];
    "x-scheme-handler/about" = [ "firefox.desktop" ];
    "x-scheme-handler/unknown" = [ "firefox.desktop" ];
  };
}
