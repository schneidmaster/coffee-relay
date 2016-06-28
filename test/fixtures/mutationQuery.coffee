Relay = require('react-relay')

class CheckHidingSpotForTreasureMutation extends Relay.Mutation
  @fragments:
    game: ->
      Relay.QL`
        fragment on Game {
          id,
          turnsRemaining,
        }
      `
    hidingSpot: -> Relay.QL`
      fragment on HidingSpot {
        id,
      }
    `

module.exports = CheckHidingSpotForTreasureMutation