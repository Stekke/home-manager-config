{pkgs, ...}:
{
  home.packages = with pkgs; [
    kde-gtk-config # for gtk apps in qt ?
    kile # latex editor
    kate # text editor
    kexi # database thing
    partition-manager # KDE Gparted version
    ksystemlog # Log viewer
    krdc # remote desktop client
    okteta # hex editor
    kcalc # calculator
    ark # archieving
    kontact # KDE office stuff
    kmail # KDE office stuff
    korganizer # KDE office stuff
    kaddressbook # KDE office stuff
    kdeApplications.kmail-account-wizard
    kdeApplications.kmailtransport
    kdeApplications.akonadi
    kdeApplications.akonadi-calendar
    kdeApplications.akonadi-contacts
    kdeApplications.kdepim-runtime
    kdeApplications.kdepim-addons
    kdeApplications.kdepim-apps-libs
    kdeApplications.pimcommon
  ];
}
