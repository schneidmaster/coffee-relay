[![npm version](https://badge.fury.io/js/coffee-relay.svg)](https://badge.fury.io/js/coffee-relay)
[![CircleCI](https://circleci.com/gh/schneidmaster/coffee-relay.svg?style=shield)](https://circleci.com/gh/schneidmaster/coffee-relay)

# coffee-relay

coffee-relay is a utility package to compile React.QL backtick queries before they're passed to the CoffeeScript compiler.

## Installation

```
npm install coffee-relay --save-dev
```

## How it works

CoffeeScript uses backticks to execute code directly as JavaScript. This conflicts with Relay's usage of backticks to write query fragments.

coffee-relay makes use of babel to compile Relay fragments into JavaScript, which is then inlined in the source CoffeeScript file using regular backtick syntax. For a few examples, check out the source and transpiled files under `test/fixtures`.

## Usage

``` javascript
var coffee = require('coffee-script');
var coffeeRelay = require('coffee-relay');
var schema = require('./data/schema.json')

var transpiled = coffeeRelay(fs.readFileSync('some-file.coffee').toString(), schema);
var compiled = coffee.compile(transpiled);
```

Alternatively, use the [webpack loader](https://www.npmjs.com/package/coffee-relay-loader).

## Testing

* `npm run test` to run the mocha tests.

## Contributing

1. Fork it ( https://github.com/schneidmaster/coffee-relay/fork )
2. Create your feature branch (git checkout -b my-new-feature)
3. Commit your changes (git commit -am 'Add some feature')
4. Push to the branch (git push origin my-new-feature)
5. Create a new Pull Request

## License

MIT
