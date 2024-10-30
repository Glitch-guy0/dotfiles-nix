{pkgs, inputs, ...}:
{

  imports = [
    ./packages/hyprland.nix
  ];

  # ************************* System Packages  **********************************
  environment.systemPackages = with pkgs;
  [
    git
    vim
    tree
    wget
    home-manager
  ];

  # *************************  Desktop Environment ***********************************
  # services.xserver.enable = true;  # X11

  # # Enable the KDE Plasma Desktop Environment.
  # services.displayManager.sddm.enable = true;
  # # plasma 6 desktop env
  # services.desktopManager.plasma6.enable = true;

  # # Configure keymap in X11
  # services.xserver.xkb = {
  #   layout = "us";
  #   variant = "";
  # };

  # enabling gdm and gnome desktop environment
  services.xserver.enable = true;
  services.xserver.displayManager.gdm.enable = true;
  services.xserver.desktopManager.gnome.enable = true;
}
