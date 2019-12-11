require ("rspec")
require ("number2words")

describe("number2words") do
  it("takes in a one digit number and returns it in word form") do
    expect("8".number2words()).to(eq("eight"))
  end
  it("takes a two digit number and returns the number in word form") do
    expect("15".number2words()).to(eq("fifteen"))
  end
  it("takes a two digit number and returns the number in word form") do
    expect("20".number2words()).to(eq("twenty"))
  end
  it("takes a three digit number and returns the number in word form") do
    expect("100".number2words()).to(eq("one-hundred"))
  end
  it("takes a three digit number and returns the number in word form") do
    expect("117".number2words()).to(eq("one-hundred-seventeen"))
  end
  it("takes a three digit number and returns the number in word form") do
    expect("155".number2words()).to(eq("one-hundred-fiftyfive"))
  end
  it("takes a three digit number and returns the number in word form") do
    expect("455".number2words()).to(eq("four-hundred-fiftyfive"))
  end
  it("takes a four digit number and returns the number in word form") do
    expect("1000".number2words()).to(eq("one-thousand"))
  end
  it("takes a four digit number and returns the number in word form") do
    expect("1100".number2words()).to(eq("one-thousand-one-hundred"))
  end
  it("takes a four digit number and returns the number in word form") do
    expect("1385".number2words()).to(eq("one-thousand-three-hundred-eightyfive"))
  end
  it("takes a five digit number and returns the number in word form") do
    expect("10000".number2words()).to(eq("ten-thousand"))
  end
  it("takes a five digit number and returns the number in word form") do
    expect("25000".number2words()).to(eq("twenty-five-thousand"))
  end
  it("takes a five digit number and returns the number in word form") do
    expect("25384".number2words()).to(eq("twenty-five-thousand-three-hundred-eightyfour"))
  end
  it("takes a six digit number and returns the number in word form") do
    expect("100000".number2words()).to(eq("one-hundred-thousand"))
  end
  it("takes a six digit number and returns the number in word form") do
    expect("584360".number2words()).to(eq("five-hundred-eighty-four-thousand-three-hundred-sixty"))
  end
  it("takes a six digit number and returns the number in word form") do
    expect("999999".number2words()).to(eq("nine-hundred-ninety-nine-thousand-nine-hundred-ninetynine"))
  end
  it("takes a seven digit number and returns the number in word form") do
    expect("1000000".number2words()).to(eq("one-million"))
  end
  it("takes a seven digit number and returns the number in word form") do
    expect("1234563".number2words()).to(eq("one-million-two-hundred-thirty-four-thousand-five-hundred-sixtythree"))
  end
  it("takes a seven digit number and returns the number in word form") do
    expect("10000000".number2words()).to(eq("ten-million"))
  end
  it("takes a seven digit number and returns the number in word form") do
    expect("13579860".number2words()).to(eq("thirteen-million-five-hundred-seventy-nine-thousand-eight-hundred-sixty"))
  end
end
