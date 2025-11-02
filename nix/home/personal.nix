{pkgs, lib, ...}: let
  common = pkgs.callPackage ./packages.nix {inherit pkgs;};
in {
  # Home Manager needs a bit of information about you and the paths it should
  # manage.
  # services.kdeconnect.enable = lib.mkForce false;
  # services.kdeconnect.package = lib.mkForce null;
  home.username = "ankitjangid";
  home.enableNixpkgsReleaseCheck = false;

  home.homeDirectory = "/Users/ankitjangid";
  imports = [
    ./common.nix
  ];
  home.packages = common.packages;
}
