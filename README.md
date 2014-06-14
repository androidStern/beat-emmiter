# beat-emmiter [![Build Status](https://secure.travis-ci.org/andrewstern/beat-emmiter.png?branch=master)](http://travis-ci.org/andrewstern/beat-emmiter)

The best project ever.

## Getting Started
Install the module with: `npm install beat-emmiter`

```coffeescript
metro = new BeatEmmiter({bpm:120})

metro.on "eighth", console.log

metro.start()

#=> 0
#=> 1
#=> 2
#=> 3
#=> 4
#=> 5
#=> 6
#=> 7
#=> 0
#=> 1
#=> 2
# ....

```

## Documentation
_(Coming soon)_

## Examples
_(Coming soon)_

## Contributing
In lieu of a formal styleguide, take care to maintain the existing coding style. Add unit tests for any new or changed functionality. Lint and test your code using [Grunt](http://gruntjs.com/).

## Release History
_(Nothing yet)_

## License
Copyright (c) 2014 andrewstern  
Licensed under the MIT license.
