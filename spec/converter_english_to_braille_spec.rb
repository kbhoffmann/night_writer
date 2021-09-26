require './lib/converter_english_to_braille'
# require './module/english_to_braille_dictionary'
require 'pry'

RSpec.describe EnglishToBrailleConverter do

  it "exists" do
    converter = EnglishToBrailleConverter.new

    expect(converter).to be_an_instance_of(EnglishToBrailleConverter)
  end

  it "can find braille by the english letter" do
    converter = EnglishToBrailleConverter.new

    expect(converter.find_braille_by_letter("z")).to eq("..\n.0\n..")
    expect(converter.find_braille_by_letter("k")).to eq("..\n..\n..")
    expect(converter.find_braille_by_letter("m")).to eq("..\n0.\n..")
  end

  it "can find mulitple braille characters by mulitple letters" do
    converter = EnglishToBrailleConverter.new

    # expected_abc = [["0", "."], [".", "."], [".", "."]],
    #                [["0", "."], ["0", "."], [".", "."]],
    #                [["0", "0"], [".", "."], [".", "."]]
    expected_abc = [".0\n0.\n..", "..\n..\n..", "..\n0.\n.."]

    # expected_dogs = [["0", "0"], [".", "0"], [".", "."]],
    #                 [["0", "."], [".", "0"], ["0", "."]],
    #                 [["0", "0"], ["0", "0"], [".", "."]],
    #                 [[".", "0"], ["0", "."], ["0", "."]]
    expected_dogs = ["..\n.0\n..", "0.\n..\n..", "..\n00\n..", "..\n.0\n.."]
    #
    # expected_kerri = [["0", "."], [".", "."], ["0", "."]],
    #                  [["0", "."], [".", "0"], [".", "."]],
    #                  [["0", "."], ["0", "0"], ["0", "."]],
    #                  [["0", "."], ["0", "0"], ["0", "."]],
    #                  [[".", "0"], ["0", "."], [".", "."]]
    expected_kerri = ["..\n..\n..", "..\n..\n.0", "..\n..\n..", "..\n..\n..", ".0\n0.\n.."]

    expect(converter.find_braille_by_mulitple_letters(["a" , "b" , "c"])).to eq(expected_abc)
    expect(converter.find_braille_by_mulitple_letters(["d", "o", "g", "s"])).to eq(expected_dogs)
    expect(converter.find_braille_by_mulitple_letters(["k", "e", "r", "r", "i"])).to eq(expected_kerri)
  end
end
