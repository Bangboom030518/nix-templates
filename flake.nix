{
  description = "A collection of templates for new projects";

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

        html = {
          path = ./html;
          welcomeText = ''
            # Getting started
            - Run `npm i`
            - Run `npm run dev`
          '';
        };
      };
    };
}
