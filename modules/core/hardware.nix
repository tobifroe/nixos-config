{ pkgs, ... }:
{
  hardware = {
    graphics = {
      enable = true;
      extraPackages = with pkgs; [

      ];
    };
  };
  hardware.enableRedistributableFirmware = true;
  hardware.ledger.enable = true;
}
