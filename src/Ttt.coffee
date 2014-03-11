class @Ttt
  constructor: () ->
    @rowCount = 3

  rows: ->
    @rowCount

  cols: ->
    3

  hasWonColumn: (player, columnNumber) ->
    false

  board: ->
    [[0,0,0],[0,0,0],[0,0,0]]