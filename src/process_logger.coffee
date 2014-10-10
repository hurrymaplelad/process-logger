split = require 'split'

module.exports = (process, {prefix}) ->
  process.stdout
    .pipe split()
    .on 'data', (line) ->
      console.log prefix, line

  process.stderr
    .pipe split()
    .on 'data', (line) ->
      console.error prefix, line

