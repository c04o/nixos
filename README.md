# dots

NixOS niri desktop

<img width="1920" height="1080" alt="Image" src="https://github.com/user-attachments/assets/943d1a0d-503f-497d-beda-c38e6d60f27b" />

![Static Badge](https://img.shields.io/badge/Distro-%231e1e2e?style=for-the-badge&logo=nixos&logoColor=%2374c7ec&label=NixOS&labelColor=%23181825)
![Static Badge](https://img.shields.io/badge/WM-%231e1e2e?style=for-the-badge&logo=niri&logoColor=%23fab387&label=niri&labelColor=%23181825)
![Static Badge](https://img.shields.io/badge/Terminal-%231e1e2e?style=for-the-badge&logo=foot&logoColor=%eff1f5&label=Foot&labelColor=%23181825)
![Static Badge](https://img.shields.io/badge/Shell-%231e1e2e?style=for-the-badge&logo=fishshell&logoColor=%23a6e3a1&label=Fish&labelColor=%23181825)
![Static Badge](https://img.shields.io/badge/Editor-%231e1e2e?style=for-the-badge&logo=neovim&logoColor=%23a6e3a1&label=Neovim&labelColor=%23181825)
![Static Badge](https://img.shields.io/badge/Browser-%231e1e2e?style=for-the-badge&logo=heliumbrowser&logoColor=%2374c7ec&label=Helium&labelColor=%23181825)

My personal configuration riced around the [Catppuccin](https://catppuccin.com)
Mocha palette

## Key Bindings

### System & Applications

| Keybinding                                       | Action                              |
| :----------------------------------------------- | :---------------------------------- |
| <kbd>Mod</kbd> + <kbd>Return</kbd>               | Launch Terminal (`foot`)            |
| <kbd>Mod</kbd> + <kbd>B</kbd>                    | Launch Web Browser (`helium`)       |
| <kbd>Mod</kbd> + <kbd>F</kbd>                    | Launch File Manager (`nautilus`)    |
| <kbd>Mod</kbd> + <kbd>Space</kbd>                | Toggle DMS Spotlight Launcher       |
| <kbd>Mod</kbd> + <kbd>Q</kbd>                    | Close focused window                |
| <kbd>Mod</kbd> + <kbd>Shift</kbd> + <kbd>E</kbd> | Quit Niri session                   |
| <kbd>Mod</kbd> + <kbd>Shift</kbd> + <kbd>P</kbd> | Power off monitors                  |
| <kbd>Mod</kbd> + <kbd>Escape</kbd>               | Toggle keyboard shortcuts inhibitor |
| <kbd>Mod</kbd> + <kbd>Shift</kbd> + <kbd>/</kbd> | Show hotkey overlay                 |

### Navigation & Focus

| Keybinding                                                        | Action                         |
| :---------------------------------------------------------------- | :----------------------------- |
| <kbd>Mod</kbd> + <kbd>H</kbd> / <kbd>Mod</kbd> + <kbd>Left</kbd>  | Focus column to the left       |
| <kbd>Mod</kbd> + <kbd>L</kbd> / <kbd>Mod</kbd> + <kbd>Right</kbd> | Focus column to the right      |
| <kbd>Mod</kbd> + <kbd>J</kbd> / <kbd>Mod</kbd> + <kbd>Down</kbd>  | Focus window or workspace down |
| <kbd>Mod</kbd> + <kbd>K</kbd> / <kbd>Mod</kbd> + <kbd>Up</kbd>    | Focus window or workspace up   |
| <kbd>Mod</kbd> + <kbd>1</kbd> - <kbd>5</kbd>                      | Focus workspace 1 through 5    |
| <kbd>Mod</kbd> + <kbd>WheelScrollLeft</kbd> / <kbd>Right</kbd>    | Focus column left / right      |
| <kbd>Mod</kbd> + <kbd>WheelScrollUp</kbd> / <kbd>Down</kbd>       | Focus workspace up / down      |

### Window & Column Management

| Keybinding                                                                                              | Action                               |
| :------------------------------------------------------------------------------------------------------ | :----------------------------------- |
| <kbd>Mod</kbd> + <kbd>Shift</kbd> + <kbd>H</kbd> / <kbd>Mod</kbd> + <kbd>Shift</kbd> + <kbd>Left</kbd>  | Move column left                     |
| <kbd>Mod</kbd> + <kbd>Shift</kbd> + <kbd>L</kbd> / <kbd>Mod</kbd> + <kbd>Shift</kbd> + <kbd>Right</kbd> | Move column right                    |
| <kbd>Mod</kbd> + <kbd>Shift</kbd> + <kbd>J</kbd> / <kbd>Mod</kbd> + <kbd>Shift</kbd> + <kbd>Down</kbd>  | Move window down / workspace down    |
| <kbd>Mod</kbd> + <kbd>Shift</kbd> + <kbd>K</kbd> / <kbd>Mod</kbd> + <kbd>Shift</kbd> + <kbd>Up</kbd>    | Move window up / workspace up        |
| <kbd>Mod</kbd> + <kbd>Shift</kbd> + <kbd>1</kbd> - <kbd>5</kbd>                                         | Move column to workspace 1 through 5 |
| <kbd>Mod</kbd> + <kbd>M</kbd>                                                                           | Maximize column                      |
| <kbd>Mod</kbd> + <kbd>C</kbd>                                                                           | Center column                        |
| <kbd>Mod</kbd> + <kbd>V</kbd>                                                                           | Toggle window floating state         |
| <kbd>Mod</kbd> + <kbd>Shift</kbd> + <kbd>F</kbd>                                                        | Toggle fullscreen window             |
| <kbd>Mod</kbd> + <kbd>R</kbd>                                                                           | Switch preset column width           |
| <kbd>Mod</kbd> + <kbd>-</kbd>                                                                           | Decrease column width (-10%)         |
| <kbd>Mod</kbd> + <kbd>=</kbd>                                                                           | Increase column width (+10%)         |

### Tab Controls

| Keybinding                    | Action                                   |
| :---------------------------- | :--------------------------------------- |
| <kbd>Mod</kbd> + <kbd>W</kbd> | Toggle current column tabbed display     |
| <kbd>Mod</kbd> + <kbd>,</kbd> | Consume window into active column/tab    |
| <kbd>Mod</kbd> + <kbd>.</kbd> | Expel active tab out into its own column |

### Screenshots & Media

| Keybinding                                            | Action                                    |
| :---------------------------------------------------- | :---------------------------------------- |
| <kbd>Print</kbd>                                      | Interactive screenshot (saves to disk)    |
| <kbd>Ctrl</kbd> + <kbd>Print</kbd>                    | Fullscreen screenshot (saves to disk)     |
| <kbd>Alt</kbd> + <kbd>Print</kbd>                     | Active window screenshot (saves to disk)  |
| <kbd>Ctrl</kbd> + <kbd>Shift</kbd> + <kbd>Print</kbd> | Fullscreen screenshot (clipboard only)    |
| <kbd>Alt</kbd> + <kbd>Shift</kbd> + <kbd>Print</kbd>  | Active window screenshot (clipboard only) |
| <kbd>XF86AudioRaiseVolume</kbd>                       | Increase audio volume (+10%)              |
| <kbd>XF86AudioLowerVolume</kbd>                       | Decrease audio volume (-10%)              |
| <kbd>XF86AudioMute</kbd>                              | Toggle audio mute                         |
| <kbd>XF86MonBrightnessUp</kbd>                        | Increase display brightness (+10%)        |
| <kbd>XF86MonBrightnessDown</kbd>                      | Decrease display brightness (-10%)        |

## Acknowledgements

Thanks to the amazing people whose work make my desktop possible

- [sodiboo](https://github.com/sodiboo)'s
  [niri-flake](https://github.com/sodiboo/niri-flake).
- I found the original wallpaper in
  [this Reddit comment](https://www.reddit.com/media?url=https%3A%2F%2Fpreview.redd.it%2Fgot-any-ultrakill-computer-wallpapers-i-only-found-ones-for-v0-baprk7qoxbae1.png%3Fwidth%3D10000%26format%3Dpng%26auto%3Dwebp%26s%3D5a478b11b51d9bd0284a1717bbf93961c6d56076).
- I Catppuccin'd the wallpaper with [omar](https://github.com/arrowpc)'s
  [Palettum](https://github.com/arrowpc/palettum).

## License

The source files in this repository are licensed under the
[MIT License](LICENSE).
