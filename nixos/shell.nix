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
    vifm
    rxvt-unicode-unwrapped
    st
    encfs
    protonvpn-gui
    calibre
    signal-desktop
    cloc
    universal-ctags
    fastfetch
    fzf
    fd
    ripgrep
    bat
    broot
    tree
    eza
    dust
    jq
    tealdeer
    nmon
    atop
    iotop
    curl
    wget
  ];

}
