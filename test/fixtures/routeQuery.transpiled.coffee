Relay = require('react-relay')

class Route extends Relay.Route
  @queries:
    game: ->
      `(function () {
  return {
    children: [{
      fieldName: "id",
      kind: "Field",
      metadata: {
        isGenerated: true,
        isRequisite: true
      },
      type: "ID"
    }],
    fieldName: "game",
    kind: "Query",
    metadata: {},
    name: "Unknown",
    type: "Game"
  };
})();`

  @routeName: 'AppHomeRoute'

module.exports = Route