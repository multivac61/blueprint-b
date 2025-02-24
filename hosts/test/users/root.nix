{ inputs, ... }:
{
  imports = [ inputs.blueprint-a.homeModules.default ];
  home.stateVersion = "25.05";
}
