{exec} = require 'child_process'
assert = require 'assert'

describe 'process-logger', ->

  beforeEach ->
    @execFixture = (filename, done) =>
      exec "./node_modules/.bin/coffee test/fixtures/#{filename}.coffee", (err, @stdout, @stderr) => done(err)

  describe 'given a child_process', ->
    beforeEach (done) ->
      @execFixture 'parent', done

    it 'logs the output with the configured prefix', ->
      assert /^\[child\]/.test @stdout

  describe 'given a child_process with errors', ->
    beforeEach (done) ->
      @execFixture 'bad_child', done

    it 'logs stderr with the prefix', ->
      assert /^\[bad-child\]/.test @stderr
