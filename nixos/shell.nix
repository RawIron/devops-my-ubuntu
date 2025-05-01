let
  nixpkgs = fetchTarball "https://github.com/NixOS/nixpkgs/tarball/nixos-24.11";
  pkgs = import nixpkgs { config = {}; overlays = []; };
in

pkgs.mkShellNoCC {
  packages = with pkgs; [
    neovim
    helix
    rclone
    git
    tig
    diff-so-fancy
    tmux
    zellij
    st
    rxvt-unicode-unwrapped
    vifm
    joshuto
    poppler_utils
    lynx
    chafa
    timg
    glow
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
    lsof
    ncdu
    dust
    jq
    tealdeer
    fastfetch
    nmon
    bottom
    htop
    atop
    iotop
    curl
    wget
  ];

}
