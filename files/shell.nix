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
    encfs
    calibre
    cloc
    universal-ctags
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
