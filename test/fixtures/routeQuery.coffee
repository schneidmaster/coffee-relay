Relay = require('react-relay')

class Route extends Relay.Route
  @queries:
    game: ->
      Relay.QL`query { game }`

  @routeName: 'AppHomeRoute'

module.exports = Route