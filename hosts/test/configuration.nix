{ inputs, ... }:
{
  nixpkgs.hostPlatform = "x86_64-linux";
  imports = [
    # This machine is a server
    inputs.srvos.nixosModules.server
    # Deployed on the AMD Hetzner hardware
    # inputs.srvos.nixosModules.hardware-hetzner-amd
    inputs.srvos.nixosModules.hardware-hetzner-cloud
  ];
  # users.users.test.isSystemUser = true;
  system.stateVersion = "25.05";
  users.users.root.initialHashedPassword = "$y$j9T$.Vjug8ygtDyb2DVz36qXb/$avXNbHp8sYL2jEY5IGEAr4xNXTra69sHxWzf9MEdYlD";
}
