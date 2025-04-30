{ config, pkgs, ... }:

{
  # This value determines the home Manager release that your
  # configuration is compatible with.
  # You can update home Manager without changing this value. See
  # the home Manager release notes for a list of state version
  # changes in each release.
  home.stateVersion = "24.11";

  # Let home Manager install and manage itself.
  programs.home-manager.enable = true;

  home.username = "michael";
  home.homeDirectory = "/home/michael";

  # link the configuration file in current directory
  # to the specified location in home directory
  home.file.".bashrc".source = ./bashrc;
  home.file.".bash_aliases".source = ./bash_aliases;
  home.file.".bash_aliases_git".source = ./bash_aliases_git;
  home.file.".config/tmux/tmux.conf".source = ./tmux.conf;
  home.file.".config/nvim/init.vim".source = ./init.vim;
  home.file.".config/vifm/vifmrc".source = ./vifmrc;
  home.file.".config/vifm/scripts/ffprobe_jq.sh".source = ./ffprobe_jq.sh;

  # link all files in `./scripts` to `~/.config/i3/scripts`
  # home.file.".config/i3/scripts" = {
  #   source = ./scripts;
  #   recursive = true;   # link recursively
  #   executable = true;  # make all files executable
  # };

  # encode the file content in nix configuration file directly
  # home.file.".xxx".text = ''
  #     xxx
  # '';

  # Packages that should be installed to the user profile.
  home.packages = with pkgs; [
    # GUI APPLICATIONS
    feh
    rofi
    zathura
    calibre
    rawtherapee
    signal-desktop
    protonvpn-gui

    # TTY
    tmux
    st
    rxvt-unicode-unwrapped

    # COMMAND LINE TOOLS
    neovim
    rclone
    git
    tig
    diff-so-fancy
    vifm
    poppler_utils
    lynx
    chafa
    timg
    glow # markdown previewer in terminal
    ffmpeg_6
    ffmpegthumbnailer
    mpv
    epub-thumbnailer
    encfs
    universal-ctags
    cloc
    scc
    ltrace # library call monitoring
    fzf # A command-line fuzzy finder
    fd
    ripgrep # recursively searches directories for a regex pattern
    bat
    broot
    tree
    eza # A modern replacement for ls
    lsof # list open files
    ncdu
    dust
    jq # A lightweight and flexible command-line JSON processor
    yq-go # yaml processor https://github.com/mikefarah/yq
    tealdeer
    fastfetch
    nmon
    htop
    atop
    iotop # io monitoring
    iftop # network monitoring
    curl
    wget
  ];
}
