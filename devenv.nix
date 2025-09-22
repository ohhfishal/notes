{ pkgs, inputs, lib, config, ... }:
let
  pkgs-unstable = import inputs.nixpkgs-unstable { system = pkgs.stdenv.system; };
in
{

  packages = [
    pkgs.hugo
    pkgs.nodejs_24
  ];

  git-hooks.hooks = {
    # Shell
    shellcheck.enable = true;

  };
}
