let
  pkgs = import <nixpkgs> {
    config.allowUnfree = true;
  };
in
pkgs.mkShell {
  packages = with pkgs; [

    opentofu
    google-cloud-sdk
  ];
}
