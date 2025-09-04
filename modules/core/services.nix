{ pkgs, ... }:
{
  services = {
    gvfs.enable = true;
    gnome.gnome-keyring.enable = true;
    dbus.enable = true;
    fstrim.enable = true;
    mullvad-vpn.enable = true;
    mullvad-vpn.package = pkgs.mullvad-vpn;
  };
}
