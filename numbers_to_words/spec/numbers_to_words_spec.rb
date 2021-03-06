require("rspec")
require("numbers_to_words")

describe("Fixnum#numbers_to_words") do
  it("returns a single digit number as a word description string") do
    expect(4.numbers_to_words).to(eq("Four"))
  end

  it("returns a double digit number in the teens as a word description string")do
    expect(15.numbers_to_words).to(eq("Fifteen"))
  end

  it("returns a double digit number in ending in 0")do
    expect(50.numbers_to_words).to(eq("Fifty"))
  end

  it("returns a double digit number that is in the twenties")do
    expect(25.numbers_to_words).to(eq("Twenty five"))
  end

  it("returns a double digit number up to 99") do
    expect(79.numbers_to_words).to(eq("Seventy nine"))
  end

  it("returns a triple digit number as a word description string") do
    expect(117.numbers_to_words).to(eq("One hundred seventeen"))
  end
  #
  # it("returns a triple digit number between 120 and 999") do
  #   expect(129.numbers_to_words).to(eq("One hundred twenty nine"))
  # end
  #
  it("returns a triple digit number between 100 and 109") do
    expect(100.numbers_to_words).to(eq("One hundred"))
  end
  #
  # it("returns a value for the number 1000") do
  #   expect(1000.numbers_to_words).to(eq("One thousand"))
  # end
  #
  # it("returns a value for numbers between 1001 to 1009") do
  #   expect(2004.numbers_to_words).to(eq("Two thousand four"))
  # end
  #
  # it("returns a value for 4 digit numbers with and ends in the teens") do
  #   expect(6015.numbers_to_words).to(eq("Six thousand fifteen"))
  # end
  #
  # it("returns a value for 4 digit numbers that have a 0 in the hundreds place") do
  #   expect(7053.numbers_to_words).to(eq("Seven thousand fifty three"))
  # end
end
