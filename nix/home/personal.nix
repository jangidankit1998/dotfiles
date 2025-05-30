{pkgs, ...}: let
  common = pkgs.callPackage ./packages.nix {inherit pkgs;};
in {
  # Home Manager needs a bit of information about you and the paths it should
  # manage.
  home.username = "ankitjangid";
  home.homeDirectory = "/Users/ankitjangid";
  imports = [
    ./common.nix
  ];
  home.packages = common.packages;
}
