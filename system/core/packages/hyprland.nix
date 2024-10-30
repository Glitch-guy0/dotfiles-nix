{ inputs, pkgs, ... }:
{
  # Show hyprland on sddm (login screen)
  services.displayManager.sddm.wayland.enable = true; # sddm(hyprland option)*

  # Install hyprland
  programs.hyprland = {
    enable = true;

    # set the flake package
    package = inputs.hyprland.packages.${pkgs.stdenv.hostPlatform.system}.hyprland;

    # PORTAL PACKAGE, for applications to work properly (official)
    portalPackage = inputs.hyprland.packages.${pkgs.stdenv.hostPlatform.system}.xdg-desktop-portal-hyprland;
  };
}