{
  description = "A collection of flake templates for new projects";

  outputs =
    { ... }:
    {
      templates = {
        zig = {
          path = ./zig;
          welcomeText = ''
            # Getting started
            - Run `nix develop`
            - Run `zig build run`
            - Update `build.zig.zon` with the suggested fingerprint
          '';
        };
      };
    };
}
