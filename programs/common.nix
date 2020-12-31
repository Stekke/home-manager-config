{ config, pkgs, lib, ...}:
{
  programs = {
    home-manager.enable = true;
    info.enable = true;
    man.enable = true;
    man.generateCaches = true;

    fzf.enable = true;
    fzf.enableFishIntegration = true;
    htop = {
      enable = true;
      accountGuestInCpuMeter = true;
      detailedCpuTime = true;
      hideThreads = true;
      hideKernelThreads = true;
      hideUserlandThreads = true;
      highlightBaseName = true;
      highlightMegabytes = true;
      shadowOtherUsers = true;
      showCpuFrequency = true;
      showCpuUsage = true;
      showProgramPath = false;
      treeView = true;
    };
    kakoune.enable = true;
    broot.enable = true;
    broot.enableFishIntegration = true;

    neovim = {
      enable = true;
      viAlias = true;
      vimAlias = true;
      plugins = [ pkgs.vimPlugins.vim-nix ];
    };

    fish = {
      enable = true;
      functions = {
        # all-in-one command to update the system
        upgrade = ''
          nixos-rebuild switch --upgrade
          nix-channel --update
          home-manager switch
          '';

        # ctrl-o to open ranger file manager
        ranger-cd = ''
          set tmpfile "/tmp/pwd-from-ranger"
          ranger --choosedir=$tmpfile $argv
          set rangerpwd (cat $tmpfile)
          if test "$PWD" != $rangerpwd
              cd $rangerpwd
          end
         '';
        fish_user_key_bindings = ''
          bind -M default \co 'ranger-cd'
          bind -M command \co 'ranger-cd'
          bind -M insert \co 'ranger-cd'
        '';
      };

      # Nice color for manpages, also use kakoune text editor
      interactiveShellInit = ''
        set -x LESS_TERMCAP_mb (printf "\033[01;31m")
        set -x LESS_TERMCAP_md (printf "\033[01;31m")
        set -x LESS_TERMCAP_me (printf "\033[0m")
        set -x LESS_TERMCAP_se (printf "\033[0m")
        set -x LESS_TERMCAP_so (printf "\033[01;44;33m")
        set -x LESS_TERMCAP_ue (printf "\033[0m")
        set -x LESS_TERMCAP_us (printf "\033[01;32m")
        set -x EDITOR kak
      '';
    };
  };
}
