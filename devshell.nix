{ pkgs, inputs }:
pkgs.mkShell {
  # Add build dependencies
  packages = inputs.blueprint-a.lib.my_favorite_packages { inherit pkgs; };

  # Add environment variables
  env = { };

  # Load custom bash code
  shellHook = ''

  '';
}
