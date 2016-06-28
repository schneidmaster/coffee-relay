Relay = require('react-relay')

class CheckHidingSpotForTreasureMutation extends Relay.Mutation
  @fragments:
    game: ->
      `(function () {
  return {
    children: [{
      fieldName: "id",
      kind: "Field",
      metadata: {
        isRequisite: true
      },
      type: "ID"
    }, {
      fieldName: "turnsRemaining",
      kind: "Field",
      metadata: {},
      type: "Int"
    }],
    id: Relay.QL.__id(),
    kind: "Fragment",
    metadata: {},
    name: "UnknownRelayQL",
    type: "Game"
  };
})();`
    hidingSpot: -> `(function () {
  return {
    children: [{
      fieldName: "id",
      kind: "Field",
      metadata: {
        isRequisite: true
      },
      type: "ID"
    }],
    id: Relay.QL.__id(),
    kind: "Fragment",
    metadata: {},
    name: "UnknownRelayQL",
    type: "HidingSpot"
  };
})();`

module.exports = CheckHidingSpotForTreasureMutation