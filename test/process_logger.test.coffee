{exec} = require 'child_process'
assert = require 'assert'

describe 'process-logger', ->
  beforeEach (done) ->
    exec './node_modules/.bin/coffee test/fixtures/parent.coffee', (err, @stdout, @stderr) => done(err)

  it 'logs the output with the configured prefix', ->
    assert /^\[child\]/.test @stdout
