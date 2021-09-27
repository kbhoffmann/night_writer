require './lib/converter_english_to_braille'
require 'pry'

RSpec.describe EnglishToBrailleConverter do

  it "exists" do
    converter = EnglishToBrailleConverter.new

    expect(converter).to be_an_instance_of(EnglishToBrailleConverter)
  end

  it "can turn a message into an array" do
    converter = EnglishToBrailleConverter.new

    expect(converter.turn_message_to_array("z")).to eq(["z"])
    expect(converter.turn_message_to_array("hello")).to eq(["h", "e", "l", "l", "o"])
    expect(converter.turn_message_to_array("hey there")).to eq(["h", "e", "y", " ", "t", "h", "e", "r", "e"])
  end
  # it "can find mulitple braille characters by mulitple letters" do
  #   converter = EnglishToBrailleConverter.new
  #
  #   expected_dogs = ["..\n.0\n..", "0.\n..\n..", "..\n00\n..", "..\n.0\n.."]
  #   expected_kerri = ["..\n..\n..", "..\n..\n.0", "..\n..\n..", "..\n..\n..", ".0\n0.\n.."]
  #
  #   expect(converter.find_braille_by_mulitple_letters(["d", "o", "g", "s"])).to eq(expected_dogs)
  #   expect(converter.find_braille_by_mulitple_letters(["k", "e", "r", "r", "i"])).to eq(expected_kerri)
  # end
end

#
# expected_kerri = [["0", "."], [".", "."], ["0", "."]],
#                  [["0", "."], [".", "0"], [".", "."]],
#                  [["0", "."], ["0", "0"], ["0", "."]],
#                  [["0", "."], ["0", "0"], ["0", "."]],
#                  [[".", "0"], ["0", "."], [".", "."]]


  # expected_dogs = [["0", "0"], [".", "0"], [".", "."]],
  #                 [["0", "."], [".", "0"], ["0", "."]],
  #                 [["0", "0"], ["0", "0"], [".", "."]],
  #                 [[".", "0"], ["0", "."], ["0", "."]]

  # expected_abc = [["0", "."], [".", "."], [".", "."]],
  #                [["0", "."], ["0", "."], [".", "."]],
  #                [["0", "0"], [".", "."], [".", "."]]
