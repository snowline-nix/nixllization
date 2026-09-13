{ nixlib-general, ... }:
{
  lib = let
    inputs = nixlib-general.lib;

    mixins = import ./mixins.nix inputs;
    process = import ./process.nix inputs;
    steps = import ./steps.nix inputs;
  in {
    inherit mixins process steps;

    inherit (mixins)
      insertAfterFirstId
      insertAfterId
      insertAfterIndex
      insertBeforeFirstId
      insertBeforeId
      insertBeforeIndex
      replaceAtIndex
      replaceId
      removeAtIndex
      removeId
      ;

    inherit (process)
      runProcess;

    inherit (steps)
      mkStep;
  };
}
