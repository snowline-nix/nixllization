{
  description = "nixllization";

  inputs.nixlattice.url = "github:snowline-nix/nixlattice";

  outputs = inputs: import ./src inputs;
}
