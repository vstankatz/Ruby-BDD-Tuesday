require ("rspec")
require ("ruby_logic")


describe('String#ruby_logic') do
  it("returns a scrabble score of 1 for a") do
    expect("a".ruby_logic()).to(eq(1))
  end
  it("returns a scrabble score of 2 for d") do
    expect("d".ruby_logic()).to(eq(2))
  end
  it("returns a scrabble score of 2 for b") do
    expect("b".ruby_logic()).to(eq(3))
  end
  it("returns a scrabble score of 2 for f") do
    expect("f".ruby_logic()).to(eq(4))
  end
  it("returns a scrabble score of 2 for k") do
    expect("k".ruby_logic()).to(eq(5))
  end
  it("returns a scrabble score of 2 for j") do
    expect("j".ruby_logic()).to(eq(8))
  end
  it("returns a scrabble score of 2 for q") do
    expect("q".ruby_logic()).to(eq(10))
  end
  it("should add the letter score together and give a letter sum") do
    expect("happy".ruby_logic()).to(eq(15))
  end
  it("should add the letter score together and give a letter sum") do
    expect("quizical".ruby_logic()).to(eq(28))
  end
end
