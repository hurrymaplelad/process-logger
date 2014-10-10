logProcess = require '../..'
{spawn} = require 'child_process'

child = spawn 'ls', ['does_not_exist']
logProcess child, prefix: '[bad-child]'
