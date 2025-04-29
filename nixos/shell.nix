let
  nixpkgs = fetchTarball "https://github.com/NixOS/nixpkgs/tarball/nixos-24.11";
  pkgs = import nixpkgs { config = {}; overlays = []; };
in

pkgs.mkShellNoCC {
  packages = with pkgs; [
    neovim
    rclone
    git
    tig
    diff-so-fancy
    tmux
    st
    rxvt-unicode-unwrapped
    vifm
    poppler_utils
    lynx
    chafa
    timg
    ffmpeg_6
    ffmpegthumbnailer
    mpv
    feh
    epub-thumbnailer
    rofi
    zathura
    calibre
    rawtherapee
    signal-desktop
    protonvpn-gui
    encfs
    universal-ctags
    cloc
    scc
    fzf
    fd
    ripgrep
    bat
    broot
    tree
    eza
    ncdu
    dust
    jq
    tealdeer
    fastfetch
    nmon
    htop
    atop
    iotop
    curl
    wget
  ];

}
