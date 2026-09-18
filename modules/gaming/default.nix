{pkgs, ...}: {
  programs = {
    # temporarily omptimize when launching games
    gamemode.enable = true;

    steam = {
      enable = true;

      # open firewall ports for local streaming/multiplayer
      remotePlay.openFirewall = true;
      dedicatedServer.openFirewall = true;
      localNetworkGameTransfers.openFirewall = true;

      extraCompatPackages = with pkgs; [
        # default proton
        proton-ge-bin
      ];
    };
  };

  environment.systemPackages = with pkgs; [
    # another game launcher
    heroic

    # manage proton via tui
    protonup-rs
  ];
}
