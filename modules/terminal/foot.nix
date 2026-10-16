{...}: {
  programs.foot = {
    enable = true;
    # background foot daemon for quicker startups
    server.enable = true;
    settings = {
      main = {
        # font & size
        font = "JetBrainsMono Nerd Font:size=11";
        pad = "8x8"; # internal padding
        alpha = "0.9"; # transparency
      };
      # other sane defaults
      scrollback = {
        lines = 10000;
        multiplier = "3.0"; # scroll 3 lines per mouse wheel tick
      };

      cursor = {
        style = "block";
        blink = "yes";
      };

      mouse = {
        hide-when-typing = "yes"; # hides pointer while typing
      };

      url = {
        # detect links on hover or with ctrl+shift+o
        launch = "${pkgs.xdg-utils}/bin/xdg-open \${url}";
        osc8-underline = "url-mode";
      };
    };
  };
}
