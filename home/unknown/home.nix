{ config, pkgs, ... }:
{
  home.username = "unknown";
  home.homeDirectory = "/home/unknown";
  home.packages = with pkgs;[
    brave
    btop
    bun
    kitty
    neofetch
    vscode
    xdg-utils # for ipc etc...
    firefox # for testing
  ];

  imports = [
    ./hyprland.nix
  ];



  # You should not change this value, even if you update Home Manager. If you do
  # want to update the value, then make sure to first check the Home Manager
  # release notes.
  home.stateVersion = "24.05"; # Please read the comment before changing.
  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
}