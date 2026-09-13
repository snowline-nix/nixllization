{ nixlib-general, ... }:
let lib = nixlib-general.lib; in
{
  lib =
    {
      mixins = import ./mixins.nix lib;
      process = import ./process.nix lib;
      steps = import ./steps.nix lib;
    };
}
