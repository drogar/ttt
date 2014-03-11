describe "ttt", ->
  beforeEach ->
    @ttt = new Ttt()

  it "should have 3 rows", ->
    expect(@ttt.rows()).toEqual(3)

  it "should have 3 columns", ->
    expect(@ttt.cols()).toEqual(3)

  describe "board", ->
    it "should have 3 columns", ->
      expect(@ttt.board().length).toEqual(3)

    it "should have 3 rows", ->
      expect(@ttt.board()[0].length).toEqual(3)
      expect(@ttt.board()[1].length).toEqual(3)
      expect(@ttt.board()[2].length).toEqual(3)

    it "should be all 0s", ->
      for column in [0, 1, 2]
        for space in @ttt.board()[column]
          expect(space).toEqual(0)

  it "should return false for x has won on any column", ->
    expect(@ttt.hasWonColumn('x',0)).toBeFalsy()
    expect(@ttt.hasWonColumn('x',1)).toBeFalsy()
    expect(@ttt.hasWonColumn('x',2)).toBeFalsy()