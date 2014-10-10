process-logger
==============

Prefix child process console logging

[![NPM version](http://img.shields.io/npm/v/process-logger.svg?style=flat-square)](https://www.npmjs.org/package/process-logger)
[![Build Status](http://img.shields.io/travis/hurrymaplelad/process-logger/master.svg?style=flat-square)](https://travis-ci.org/hurrymaplelad/process-logger)

Usage
-----

``` js
var logProcess = require('process-logger'),
    spawn = require('child_process').spawn;

var child = spawn('ls');
logProcess(child, {prefix: '[child]'});

// Output
//$ [child] README.md
//$ [child] lib
//$ [child] node_modules
//$ [child] package.json
//$ [child] src
//$ [child] test
```
