require './lib/converter_english_to_braille'
require 'pry'

RSpec.describe EnglishToBrailleConverter do

  it "exists" do
    converter = EnglishToBrailleConverter.new

    expect(converter).to be_an_instance_of(EnglishToBrailleConverter)
  end

  it "can turn a message into an array" do
    converter = EnglishToBrailleConverter.new

    expect(converter.turn_message_to_array("Z")).to eq(["z"])
    expect(converter.turn_message_to_array("HelLo")).to eq(["h", "e", "l", "l", "o"])
    expect(converter.turn_message_to_array("aBc")).to eq(["a" , "b" , "c"])
    expect(converter.turn_message_to_array("Hey There")).to eq(["h", "e", "y", " ", "t", "h", "e", "r", "e"])
  end

  it "can find braille by letter" do
    converter = EnglishToBrailleConverter.new

    expected_abc = ["0.\n..\n..", "0.\n0.\n..", "00\n..\n.."]
    expected_dogs = ["00\n.0\n..", "0.\n.0\n0.", "00\n00\n..", ".0\n0.\n0."]
    expected_kerri = ["0.\n..\n0.", "0.\n.0\n..", "0.\n00\n0.", "0.\n00\n0.", "0.\n0.\n0."]

    expect(converter.find_braille_by_letter("a")).to eq(["0.\n..\n.."])
    expect(converter.find_braille_by_letter("A")).to eq(["0.\n..\n.."])
    expect(converter.find_braille_by_letter("F")).to eq(["00\n0.\n00"])
    expect(converter.find_braille_by_letter("z")).to eq(["0.\n.0\n00"])
    expect(converter.find_braille_by_letter("Z")).to eq(["0.\n.0\n00"])
    expect(converter.find_braille_by_letter("aBc")).to eq(expected_abc)
    expect(converter.find_braille_by_letter("dOgS")).to eq(expected_dogs)
    expect(converter.find_braille_by_letter("KerrI")).to eq(expected_kerri)
  end
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
