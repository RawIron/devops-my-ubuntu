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
    rxvt-unicode-unwrapped
    st
    vifm
    ffmpeg_6
    poppler_utils
    lynx
    chafa
    timg
    encfs
    protonvpn-gui
    calibre
    rawtherapee
    signal-desktop
    cloc
    universal-ctags
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
    fastfetch
    nmon
    htop
    atop
    iotop
    tealdeer
    curl
    wget
  ];

}
