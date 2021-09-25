require './lib/converter_english_to_braille'
require 'pry'

RSpec.describe EnglishToBrailleConverter do

  it "exists" do
    converter = EnglishToBrailleConverter.new

    expect(converter).to be_an_instance_of(EnglishToBrailleConverter)
  end

  it "can import an english file containing a single letter" do
    converter = EnglishToBrailleConverter.new

    expected_z = ([["0","."],
                  [".","0"],
                  ["0","0"]])

    expected_k = ([["0","."],
                  [".","."],
                  ["0","."]])

    expected_m = ([["0","0"],
                  [".","."],
                  ["0","."]])

    expect(converter.letter_to_braille("z")).to eq(expected_z)
    expect(converter.letter_to_braille("k")).to eq(expected_k)
    expect(converter.letter_to_braille("m")).to eq(expected_m)
  end
end
