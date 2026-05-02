const pino = require('pino')
const log = pino({ name: 'solidity-flattener', level: process.env.LOG_LEVEL || 'info' })

module.exports = log