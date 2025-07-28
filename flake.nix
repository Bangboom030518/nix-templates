{
  description = "A collection of templates for new projects";

  outputs =
    { ... }:
    {
      templates = {
        zig = {
          path = ./zig;
          description = "a basic zig template";
          welcomeText = ''
            # Getting started
            - Run `nix develop`
            - Run `zig build`
            - Update `build.zig.zon` with the suggested fingerprint
          '';
        };

        html = {
          path = ./html;
          description = "a basic html template";
          welcomeText = ''
            # Getting started
            - Run `npm i`
            - Run `npm run dev`
          '';
        };

        rust = {
          path = ./rust;
          description = "a basic rust template";
          welcomeText = ''
            # Getting started
            - Run `nix develop`
            - Run `cargo run`
          '';
        };

        base = {
          path = ./base;
          description = "a blank template";
          welcomeText = ''
            # Getting started
            - Run `nix develop`
          '';
        };

        haskell = {
          path = ./haskell;
          description = "a basic haskell template";
          welcomeText = ''
            # Getting started
            - Run `nix develop`
            - Run `cabal run`
          '';
        };
      };
    };
}
