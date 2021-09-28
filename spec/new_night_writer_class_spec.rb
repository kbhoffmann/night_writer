require 'pry'
require './lib/new_night_writer_class'

RSpec.describe NightWriter do
  it "exists" do
    night_writer = NightWriter.new

    expect(night_writer).to be_an_instance_of(NightWriter)
  end

  xit "can open a message" do
    night_writer = NightWriter.new

    expect(night_writer.self.open_message).to be_a(String)
  end

  xit "can put message into an array" do
    night_writer = NightWriter.new

    expect(night_writer.put_message_into_array).to be_an(Array)
  end

  xit "can count number of characters in a message" do
    night_writer = NightWriter.new

    expect(night_writer.count_characters).to eq(123)
  end

  xit "can converter english to braille" do
    night_writer = NightWriter.new

    expect(night_writer.convert_english_to_braille).to be_an(Array)
  end

  # it "can print a message to the terminal" do
  #   night_writer = NightWriter.new
  #
  #   expect(night_writer.print_created_message).to eq()
  # end

  # it "can write converted message to braille file" do
  #   night_writer = NightWriter.new
  #
  #   expect(night_writer.write_braille_file).to ()
  # end
end
