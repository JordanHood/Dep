const Repository = require('./lib/repository')
const repository = new Repository(require('./' + process.argv[2]))
const constraints = require('./' + process.argv[4])
const installer = require('./lib/installer')
const fs = require('fs')
const result = installer.execute({repository, constraints})
fs.writeFile('./commands.json', JSON.stringify(result.commands), err => {
  if (err) return console.error(err)
})
