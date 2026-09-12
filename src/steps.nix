{ ... }:
{
  mkStep = {
    identifier,
    operation,
    description ? null,
  }: {
    _type = "step";
    inherit identifier operation description;
  };
}
