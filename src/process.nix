# a "process" is just a list of steps

{ accForEachElem, ... }:
{
  runProcess = process: inputs:
    accForEachElem process inputs (state: step: step.operation state);
}
