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

  insertAfterFirstId = stepBefore: steps:
    insertAfterElemAt (indexOfMatch steps (step: step.identifier == stepBefore)) steps;

  insertAfterId = stepBefore: steps:
    insertAfterElemsAt (indicesOfMatch steps (step: step.identifier == stepBefore)) steps;

  insertAfterIndex = insertAfterElemAt;

  insertBeforeFirstId = stepAfter: steps:
    insertBeforeElemAt (indexOfMatch steps (step: step.identifier == stepAfter)) steps;

  insertBeforeId = stepAfter: steps:
    insertBeforeElemsAt (indicesOfMatch steps (step: step.identifier == stepAfter)) steps;

  insertBeforeIndex = insertBeforeElemAt;

  replaceAtIndex = replaceElemAt;

  replaceId = id: steps: step: replaceElemsAt (indicesOfMatch steps (step: step.identifier == id)) steps step;

  removeAtIndex = removeElemAt;

  removeId = id: steps: removeElemsAt (indicesOfMatch steps (step: step.identifier == id));
}
