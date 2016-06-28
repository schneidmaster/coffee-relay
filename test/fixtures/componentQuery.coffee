Relay = require('react-relay')

module.exports = Relay.createContainer(App, 
  fragments:
    game: ->
      Relay.QL`
        fragment on Game {
          turnsRemaining,
          hidingSpots(first: 9) {
            edges {
              node {
                hasBeenChecked,
                hasTreasure,
                id,
                ${CheckHidingSpotForTreasureMutation.getFragment('hidingSpot')},
              }
            }
          },
          ${CheckHidingSpotForTreasureMutation.getFragment('game')},
        }
      `
)