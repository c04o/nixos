{pkgs, ...}: {
  imports = [
    ./hardware-configuration.nix
  ];

  # bootloader & kernel
  boot = {
    kernelPackages = pkgs.linuxPackages_zen;
    loader = {
      systemd-boot = {
        enable = true;
        configurationLimit = 5;
      };
      efi.canTouchEfiVariables = true;
    };
  };

  networking = {
    hostName = "c04o";
    networkmanager.enable = true;
  };

  hardware.bluetooth.enable = true;

  time.timeZone = "America/Managua";

  i18n = {
    defaultLocale = "en_US.UTF-8";
    supportedLocales = [
      "en_US.UTF-8/UTF-8"
    ];
  };

  # required by home-manager for xdg portal linking when useUserPackages is enabled
  environment.pathsToLink = [
    "/share/applications"
    "/share/xdg-desktop-portal"
    "/share/wayland-sessions"
  ];

  services = {
    displayManager = {
      ly.enable = true;
      sessionPackages = [
        pkgs.niri
      ];
    };
    dbus.enable = true;
    printing.enable = true;
    power-profiles-daemon.enable = true;
    upower.enable = true;
    pulseaudio.enable = false;
    pipewire = {
      enable = true;
      alsa.enable = true;
      alsa.support32Bit = true;
      pulse.enable = true;
    };
    desktopManager.gnome.enable = false;
    xserver = {
      enable = false;
      xkb = {
        layout = "us";
        variant = "";
      };
    };
  };

  security.rtkit.enable = true;

  users.users.coni = {
    isNormalUser = true;
    description = "coni";
    shell = pkgs.fish;
    extraGroups = [
      "networkmanager"
      "wheel"
    ];
  };

  programs = {
    xwayland.enable = true;
    dconf.enable = true;
    niri.enable = true;
    fish.enable = true;

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

  # packages & env
  nixpkgs = {
    # allow # allow propietary software (ew)
    config.allowUnfree = true;
    overlays = [
      (final: prev: {
        # i need downgrade xwayland-satellite so steam works
        xwayland-satellite = prev.xwayland-satellite.overrideAttrs (oldAttrs: rec {
          version = "0.8.1";
          src = prev.fetchFromGitHub {
            owner = "Supreeeme";
            repo = "xwayland-satellite";
            rev = "v${version}";
            hash = "sha256-BUE41HjLIGPjq3U8VXPjf8asH8GaMI7FYdgrIHKFMXA=";
          };
          cargoHash = "sha256-16L6gsvze+m7XCJlOA1lsPNELE3D364ef2FTdkh0rVY=";
        });
      })
    ];
  };
  # global packages
  environment.systemPackages = with pkgs; [
    xwayland-satellite
    # This program allows you read and control device brightness
    brightnessctl

    # Set of small useful utilities that use the proc filesystem (such as fuser, killall and pstree)
    psmisc

    # Command to produce a depth indented directory listing
    tree

    # Extraction utility for archives compressed in .zip format
    unzip

    # Tool for retrieving files using HTTP, HTTPS, and FTP
    wget

    # Compressor/archiver for creating and modifying zipfiles
    zip
  ];

  # auto-delete old nixos generations
  nix.gc = {
    automatic = true;
    dates = "weekly";
    options = "--delete-older-than 7d";
  };

  nix.settings = {
    experimental-features = [
      "nix-command"
      "flakes"
    ];
    substituters = [
      "https://cache.nixos.org/"
    ];
    trusted-public-keys = [
      "cache.nixos.org-1:6NCHdD59X431o0gWypbMrAURkbJ16ZPMQFGspcDShjY="
    ];
  };

  # DO NOT CHANGE. this is the first nixos version installed on this machine
  system.stateVersion = "25.05";
}
