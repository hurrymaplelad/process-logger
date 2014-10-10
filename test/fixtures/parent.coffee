logProcess = require '../..'
{spawn} = require 'child_process'

child = spawn 'ls'
logProcess child, prefix: '[child]'
