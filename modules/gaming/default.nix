{pkgs, ...}: {
  home.packages = with pkgs; [
    # game launchers
    heroic
    lutris

    # manage proton via tui
    protonup-rs
  ];
}
