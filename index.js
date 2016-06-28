var babel = require('babel-core');
var RelayQLTransformer = require('babel-relay-plugin/lib/RelayQLTransformer');

module.exports = function(source, schema) {
  var rexp = /Relay.QL`[^`]*`/g;
  var getBabelRelayPlugin = require('babel-relay-plugin');

  var transformer = new RelayQLTransformer(schema);
  
  return source.replace(rexp, function(match) {
    var es6 = babel.transform(match, { plugins: [getBabelRelayPlugin(schema)] }).code;
    return '`' + es6 + '`';
  });
}
