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

  env.HOST = "localhost";
  env.PORT = "8080";
  processes = {
    webserver = {
      exec = "npx quartz build --serve --directory ../notes";
      process-compose = {
        working_dir = "${config.env.DEVENV_ROOT}/quartz";
        # log_location = "${config.env.DEVENV_ROOT}/logs/fastapi.log";
        availability = {
          restart = "on_failure";
          max_restarts = 3;
          backoff_seconds = 2;
        };
        readiness_probe = {
          http_get = {
            host = config.env.HOST;
            port = config.env.PORT;
            path = "/";
          };
          initial_delay_seconds = 5;
          period_seconds = 10;
          timeout_seconds = 3;
          success_threshold = 1;
          failure_threshold = 3;
        };
      };
    };
  };
}
