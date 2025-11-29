== To use these templates
For nixos, make sure the following line is present in your systemwide `flake.nix`.

```nix
{
  inputs = {
    ..
    templates.url = "github:Bangboom030518/nix-templates";
  };

  ..
}
```

For other operating systems, be sad.

== To add a new template

1. Copy the `./default` directory and make any required adjustments.
2. Update `flake.nix` as follows:

```nix
  outputs =
    { ... }:
    {
      templates = {
        ...

        <template-name> = {
          path = ./<directory-name>;
          description = "a basic <language> template";
          welcomeText = ''
            # Getting started
            - Run `nix develop`
            - <init commands...>
          '';
        };
      };
    };
}

```

3. Commit the changes to github.
4. In the systemwide flake directory, run `nix flake update templates`.
5. Rebuild the system with nixos-rebuild.
