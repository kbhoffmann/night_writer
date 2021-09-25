# require './lib/night_writer'
require './lib/converter_english_to_braille'
require './module/english_to_braille_dictionary'
require 'pry'

RSpec.describe EnglishToBrailleConverter do

  it "exists" do
    converter = EnglishToBrailleConverter.new

    expect(converter).to be_an_instance_of(EnglishToBrailleConverter)
  end

end
