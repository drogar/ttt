stdin = process.openStdin()
stdin.setEncoding 'utf8'

promptForSquare = ->
  console.log "enter co-ordinates for X"

console.log "Welcome to TTT!"
promptForSquare()