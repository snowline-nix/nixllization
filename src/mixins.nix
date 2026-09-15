{
  accForEachElem,
  indexOfMatch,
  indicesOfMatch,
  insertAfterElemAt,
  insertAfterElemsAt,
  insertBeforeElemAt,
  insertBeforeElemsAt,
  replaceElemAt,
  replaceElemsAt,
  removeElemAt,
  removeElemsAt,

  ...
}:
{
  applyMixins = mixins: _:
    accForEachElem mixins _
    (transforms: mixin: mixin transforms);

  insertAfterFirstId = stepBefore: newStep: steps:
    insertAfterElemAt (indexOfMatch steps (step: step.identifier == stepBefore)) steps newStep;

  insertAfterId = stepBefore: newStep: steps:
    insertAfterElemsAt (indicesOfMatch steps (step: step.identifier == stepBefore)) steps newStep;

  insertAfterIndex = stepBefore: newStep: steps:
    insertAfterElemAt stepBefore steps newStep;

  insertBeforeFirstId = stepAfter: newStep: steps:
    insertBeforeElemAt (indexOfMatch steps (step: step.identifier == stepAfter)) steps newStep;

  insertBeforeId = stepAfter: newStep: steps:
    insertBeforeElemsAt (indicesOfMatch steps (step: step.identifier == stepAfter)) steps newStep;

  insertBeforeIndex = stepAfter: newStep: steps:
    insertBeforeElemAt stepAfter steps newStep;

  replaceAtIndex = stepAt: newStep: steps:
    replaceElemAt stepAt steps newStep;

  replaceId = stepAt: newStep: steps:
    replaceElemsAt (indicesOfMatch steps (step: step.identifier == stepAt)) steps newStep;

  removeAtIndex = stepAt: newStep: steps:
    removeElemAt stepAt steps newStep;

  removeId = stepAt: newStep: steps:
    removeElemsAt (indicesOfMatch steps (step: step.identifier == stepAt)) steps newStep;
}
