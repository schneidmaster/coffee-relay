var fs        = require('fs');
var expect    = require('chai').expect;
var converter = require('../index');
var schema    = require('./fixtures/schema')

var readFixture = function(filename) {
  return fs.readFileSync('./test/fixtures/' + filename + '.coffee').toString();
}

describe('Relay.QL transpilation', function() {
  it('converts component query fragment', function() {
    expect(converter(readFixture('componentQuery'), schema.data)).to.equal(readFixture('componentQuery.transpiled'));
  });

  it('converts mutation query fragment', function() {
    expect(converter(readFixture('mutationQuery'), schema.data)).to.equal(readFixture('mutationQuery.transpiled'));
  });

  it('converts route query fragment', function() {
    expect(converter(readFixture('routeQuery'), schema.data)).to.equal(readFixture('routeQuery.transpiled'));
  });
});
