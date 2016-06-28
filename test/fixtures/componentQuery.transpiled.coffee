Relay = require('react-relay')

module.exports = Relay.createContainer(App, 
  fragments:
    game: ->
      `(function (RQL_0, RQL_1) {
  return {
    children: [].concat.apply([], [{
      fieldName: 'turnsRemaining',
      kind: 'Field',
      metadata: {},
      type: 'Int'
    }, {
      calls: [{
        kind: 'Call',
        metadata: {},
        name: 'first',
        value: {
          kind: 'CallValue',
          callValue: 9
        }
      }],
      children: [{
        children: [{
          children: [].concat.apply([], [{
            fieldName: 'hasBeenChecked',
            kind: 'Field',
            metadata: {},
            type: 'Boolean'
          }, {
            fieldName: 'hasTreasure',
            kind: 'Field',
            metadata: {},
            type: 'Boolean'
          }, {
            fieldName: 'id',
            kind: 'Field',
            metadata: {
              isRequisite: true
            },
            type: 'ID'
          }, Relay.QL.__frag(RQL_0)]),
          fieldName: 'node',
          kind: 'Field',
          metadata: {
            canHaveSubselections: true,
            inferredRootCallName: 'node',
            inferredPrimaryKey: 'id',
            isRequisite: true
          },
          type: 'HidingSpot'
        }, {
          fieldName: 'cursor',
          kind: 'Field',
          metadata: {
            isGenerated: true,
            isRequisite: true
          },
          type: 'String'
        }],
        fieldName: 'edges',
        kind: 'Field',
        metadata: {
          canHaveSubselections: true,
          isPlural: true
        },
        type: 'HidingSpotEdge'
      }, {
        children: [{
          fieldName: 'hasNextPage',
          kind: 'Field',
          metadata: {
            isGenerated: true,
            isRequisite: true
          },
          type: 'Boolean'
        }, {
          fieldName: 'hasPreviousPage',
          kind: 'Field',
          metadata: {
            isGenerated: true,
            isRequisite: true
          },
          type: 'Boolean'
        }],
        fieldName: 'pageInfo',
        kind: 'Field',
        metadata: {
          canHaveSubselections: true,
          isGenerated: true,
          isRequisite: true
        },
        type: 'PageInfo'
      }],
      fieldName: 'hidingSpots',
      kind: 'Field',
      metadata: {
        canHaveSubselections: true,
        isConnection: true
      },
      type: 'HidingSpotConnection'
    }, {
      fieldName: 'id',
      kind: 'Field',
      metadata: {
        isGenerated: true,
        isRequisite: true
      },
      type: 'ID'
    }, Relay.QL.__frag(RQL_1)]),
    id: Relay.QL.__id(),
    kind: 'Fragment',
    metadata: {},
    name: 'UnknownRelayQL',
    type: 'Game'
  };
})(CheckHidingSpotForTreasureMutation.getFragment('hidingSpot'), CheckHidingSpotForTreasureMutation.getFragment('game'));`
)